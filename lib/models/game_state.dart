/// ゲーム全体の状態管理
library;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/models/player.dart';
import 'package:ojisan_bounce/models/station.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

/// ゲームフェーズ
enum GamePhase {
  idle, // 待機中
  rollingDice, // サイコロを振っている
  moving, // プレイヤー移動中
  encounter, // おじさん遭遇中
  action, // アクション実行中
  result, // 結果表示中
  gameOver, // ゲーム終了
}

/// ゲーム状態
@freezed
class GameState with _$GameState {
  const factory GameState({
    required Player player,
    required List<Station> stations,
    required GamePhase phase,
    required DifficultySettings difficulty,
    @Default(null) int? currentDiceValue,
    @Default(null) OjisanEncounter? currentEncounter,
    @Default([]) List<OjisanEncounter> encounterHistory,
    @Default(false) bool isGameWon,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);

  /// 初期状態を作成
  factory GameState.initial(
    List<Station> stations, {
    DifficultyLevel difficultyLevel = DifficultyLevel.normal,
  }) {
    // 初期駅（駅0）を訪問済みに設定
    final initialStations = stations.map((station) {
      if (station.id == 0) {
        return station.copyWith(visited: true);
      }
      return station;
    }).toList();

    return GameState(
      player: const Player(),
      stations: initialStations,
      phase: GamePhase.idle,
      difficulty: DifficultySettings.fromLevel(difficultyLevel),
    );
  }
}

/// ゲーム状態の拡張メソッド
extension GameStateExtension on GameState {
  /// 現在の駅を取得
  Station get currentStation {
    return stations.firstWhere(
      (station) => station.id == player.currentStationId,
    );
  }

  /// ゲーム終了条件をチェック
  bool get isGameOver {
    // 勝利条件チェック
    final hasVisitedAll = player.hasVisitedAllStations(stations.length);
    final hasEnoughPoints =
        player.justicePoints >= difficulty.targetJusticePoints;
    final hasEnoughDefeats =
        player.ojisanDefeated >= difficulty.minOjisanDefeated;

    // デバッグログ（開発時のみ）
    if (kDebugMode) {
      debugPrint('🏁 ゲーム終了判定:');
      debugPrint(
        '   訪問駅数: ${player.visitedStations.toSet().length}/${stations.length} → $hasVisitedAll',
      );
      debugPrint(
        '   ポイント: ${player.justicePoints}/${difficulty.targetJusticePoints} → $hasEnoughPoints',
      );
      debugPrint(
        '   撃退数: ${player.ojisanDefeated}/${difficulty.minOjisanDefeated} → $hasEnoughDefeats',
      );
      debugPrint('   ターン数: ${player.turnCount}/${difficulty.maxTurns}');
    }

    if (hasVisitedAll && hasEnoughPoints && hasEnoughDefeats) {
      if (kDebugMode) debugPrint('   ✅ 勝利条件達成！');
      return true;
    }

    // 敗北条件チェック（最大ターン数超過）
    if (player.turnCount >= difficulty.maxTurns) {
      if (kDebugMode) debugPrint('   ❌ ターン数超過で敗北');
      return true;
    }

    if (kDebugMode) debugPrint('   ⏳ ゲーム継続中');
    return false;
  }

  /// 勝利判定
  bool get isWon {
    final hasVisitedAll = player.hasVisitedAllStations(stations.length);
    final hasEnoughPoints =
        player.justicePoints >= difficulty.targetJusticePoints;
    final hasEnoughDefeats =
        player.ojisanDefeated >= difficulty.minOjisanDefeated;

    return hasVisitedAll && hasEnoughPoints && hasEnoughDefeats;
  }

  /// 訪問可能な駅のリストを取得（現在地から接続されている駅）
  List<Station> getReachableStations() {
    // constants.dartの接続情報を使用
    // ここでは簡易実装として、次の駅か前の駅に移動可能とする
    final currentId = player.currentStationId;
    final reachable = <Station>[];

    if (currentId > 0) {
      reachable.add(stations[currentId - 1]);
    }
    if (currentId < stations.length - 1) {
      reachable.add(stations[currentId + 1]);
    }

    return reachable;
  }
}
