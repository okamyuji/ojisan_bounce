/// ゲーム状態管理プロバイダー
library;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/game_state.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/models/player.dart';
import 'package:ojisan_bounce/services/data_loader.dart';
import 'package:ojisan_bounce/services/sound_service.dart';
import 'package:ojisan_bounce/utils/constants.dart';
import 'package:ojisan_bounce/utils/game_logic.dart';

/// ゲーム状態Notifier
class GameNotifier extends Notifier<GameState> {
  final SoundService _soundService = SoundService();
  final DataLoader _dataLoader = DataLoader();
  Timer? _phaseTimer;
  List<Map<String, dynamic>>? _ojisanTypes;
  DifficultyLevel _currentDifficulty = DifficultyLevel.normal;

  @override
  GameState build() {
    _soundService.initialize();
    _loadData();
    return GameState.initial([]);
  }

  void cleanup() {
    _phaseTimer?.cancel();
  }

  /// データを非同期で読み込み
  Future<void> _loadData() async {
    final stations = await _dataLoader.loadStations();
    _ojisanTypes = await _dataLoader.loadOjisanTypes();
    state = GameState.initial(stations, difficultyLevel: _currentDifficulty);
  }

  /// 初期状態を作成（リセット用）
  Future<GameState> _createInitialState([DifficultyLevel? difficulty]) async {
    final stations = await _dataLoader.loadStations();
    _ojisanTypes = await _dataLoader.loadOjisanTypes();
    return GameState.initial(
      stations,
      difficultyLevel: difficulty ?? state.difficulty.level,
    );
  }

  /// 難易度を設定
  void setDifficulty(DifficultyLevel difficulty) {
    _currentDifficulty = difficulty;
    state = state.copyWith(
      difficulty: DifficultySettings.fromLevel(difficulty),
    );
  }

  /// ゲームをリセット
  Future<void> resetGame() async {
    _phaseTimer?.cancel();
    state = await _createInitialState(_currentDifficulty);
  }

  /// サイコロを振る
  Future<void> rollDice() async {
    if (state.phase != GamePhase.idle) return;

    state = state.copyWith(phase: GamePhase.rollingDice);
    _soundService.playDiceRoll();

    // サイコロアニメーション待機
    await Future.delayed(Duration(milliseconds: AnimationDurations.diceRoll));

    final diceValue = GameLogic.rollDice();
    state = state.copyWith(currentDiceValue: diceValue);

    // 移動処理へ
    await _movePlayer(diceValue);
  }

  /// プレイヤーを移動
  Future<void> _movePlayer(int diceValue) async {
    state = state.copyWith(phase: GamePhase.moving);

    final nextStationId = GameLogic.calculateNextStation(
      state.player.currentStationId,
      diceValue,
      state.stations.length,
    );

    // 移動アニメーション待機
    await Future.delayed(
      Duration(milliseconds: AnimationDurations.playerMovement),
    );

    // プレイヤー位置更新
    final updatedPlayer = state.player
        .moveToStation(nextStationId)
        .incrementTurn();

    // 駅の訪問フラグ更新
    final updatedStations = state.stations.map((station) {
      if (station.id == nextStationId) {
        return station.copyWith(visited: true);
      }
      return station;
    }).toList();

    state = state.copyWith(player: updatedPlayer, stations: updatedStations);

    // ゲーム終了チェック
    if (state.isGameOver) {
      state = state.copyWith(phase: GamePhase.gameOver, isGameWon: state.isWon);
      return;
    }

    // おじさん遭遇判定
    await _checkEncounter();
  }

  /// おじさん遭遇チェック
  Future<void> _checkEncounter() async {
    final shouldEncounter = GameLogic.shouldEncounterOjisan(
      state.difficulty.ojisanSpawnRate,
    );

    if (shouldEncounter) {
      state = state.copyWith(phase: GamePhase.encounter);
      _soundService.playOjisanAppear();

      // おじさん生成
      final ojisan = GameLogic.generateRandomOjisan(_ojisanTypes);
      final encounter = OjisanEncounter(
        ojisan: ojisan,
        encounterTime: DateTime.now(),
      );

      state = state.copyWith(currentEncounter: encounter);

      // おじさん出現アニメーション待機
      await Future.delayed(
        Duration(milliseconds: AnimationDurations.ojisanAppear),
      );

      // アクション待機状態へ（アクション開始時刻を記録）
      final updatedEncounter = encounter.copyWith(
        actionStartTime: DateTime.now(),
      );
      state = state.copyWith(
        phase: GamePhase.action,
        currentEncounter: updatedEncounter,
      );
    } else {
      // 遭遇しない場合は次のターンへ
      state = state.copyWith(phase: GamePhase.idle, currentDiceValue: null);
    }
  }

  /// アクションボタンをタップ
  void performAction(DateTime tapTime) {
    if (state.phase != GamePhase.action || state.currentEncounter == null) {
      return;
    }

    final encounter = state.currentEncounter!;

    // アクション開始時刻を基準にする（未設定の場合はエンカウンター時刻を使用）
    final baseTime = encounter.actionStartTime ?? encounter.encounterTime;

    // 実際の経過時間を計算
    final elapsedTime = tapTime.difference(baseTime).inMilliseconds / 1000.0;

    // 理想的なタイミングからの差を計算
    final optimalTime = baseTime.add(
      Duration(
        milliseconds: GameLogic.calculateOptimalTiming(
          state.difficulty,
          encounter.ojisan.evilness,
        ),
      ),
    );
    final timeDifference =
        tapTime.difference(optimalTime).inMilliseconds / 1000.0;

    // デバッグ情報を出力
    debugPrint('🎯 タイミング判定デバッグ:');
    debugPrint('   アクション開始時刻: $baseTime');
    debugPrint('   タップ時刻: $tapTime');
    debugPrint('   経過時間: ${elapsedTime.toStringAsFixed(2)}秒');
    debugPrint('   最適時刻: $optimalTime');
    debugPrint('   時間差: ${timeDifference.toStringAsFixed(2)}秒');

    // タイミング判定
    final timingResult = GameLogic.judgeTiming(
      timeDifference,
      state.difficulty,
    );
    debugPrint('   判定結果: ${timingResult.displayName}');

    // サウンド再生
    switch (timingResult) {
      case TimingResult.perfect:
        _soundService.playPerfect();
        break;
      case TimingResult.great:
        _soundService.playGreat();
        break;
      case TimingResult.good:
        _soundService.playGood();
        break;
      case TimingResult.miss:
        _soundService.playMiss();
        break;
    }

    // ポイント計算
    final pointsEarned = GameLogic.calculatePoints(
      encounter.ojisan.basePoints,
      timingResult,
    );

    // プレイヤー状態更新
    var updatedPlayer = state.player;
    if (pointsEarned > 0) {
      updatedPlayer = updatedPlayer
          .addJusticePoints(pointsEarned)
          .incrementOjisanDefeated();
    }

    // 遭遇記録を更新
    final updatedEncounter = encounter.copyWith(
      tapTime: tapTime,
      elapsedSeconds: elapsedTime,
      result: timingResult,
      pointsEarned: pointsEarned,
    );

    // メモリリーク対策: 履歴の上限を設定
    var history = [...state.encounterHistory, updatedEncounter];
    if (history.length > GameConfig.maxEncounterHistory) {
      history = history.sublist(
        history.length - GameConfig.maxEncounterHistory,
      );
    }

    state = state.copyWith(
      player: updatedPlayer,
      currentEncounter: updatedEncounter,
      encounterHistory: history,
      phase: GamePhase.result,
    );

    // 結果表示後、次のターンへ（Timerで競合状態を回避）
    _phaseTimer?.cancel();
    _phaseTimer = Timer(
      Duration(milliseconds: AnimationDurations.actionFeedback + 1000),
      () {
        if (state.phase != GamePhase.result) return;

        // ゲーム終了チェック
        if (state.isGameOver) {
          state = state.copyWith(
            phase: GamePhase.gameOver,
            isGameWon: state.isWon,
          );
          return;
        }

        // 次のターンへ
        state = state.copyWith(
          phase: GamePhase.idle,
          currentDiceValue: null,
          currentEncounter: null,
        );
      },
    );
  }

  /// アクションをスキップ（ミス扱い）
  void skipAction() {
    if (state.phase != GamePhase.action || state.currentEncounter == null) {
      return;
    }

    final encounter = state.currentEncounter!;
    final updatedEncounter = encounter.copyWith(
      result: TimingResult.miss,
      pointsEarned: 0,
    );

    state = state.copyWith(
      currentEncounter: updatedEncounter,
      encounterHistory: [...state.encounterHistory, updatedEncounter],
      phase: GamePhase.result,
    );

    // 結果表示後、次のターンへ
    Future.delayed(
      Duration(milliseconds: AnimationDurations.actionFeedback + 1000),
      () {
        if (state.isGameOver) {
          state = state.copyWith(
            phase: GamePhase.gameOver,
            isGameWon: state.isWon,
          );
          return;
        }

        state = state.copyWith(
          phase: GamePhase.idle,
          currentDiceValue: null,
          currentEncounter: null,
        );
      },
    );
  }
}

/// ゲーム状態プロバイダー
final gameProvider = NotifierProvider<GameNotifier, GameState>(
  GameNotifier.new,
);
