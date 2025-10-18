/// ゲームロジック
library;

import 'dart:math';

import 'package:ojisan_bounce/models/difficulty.dart';
import 'package:ojisan_bounce/models/ojisan.dart';
import 'package:ojisan_bounce/utils/constants.dart';

/// ゲームロジック
class GameLogic {
  static final Random _random = Random();

  /// サイコロを振る（1-6）
  static int rollDice() {
    return _random.nextInt(GameConfig.diceMax) + GameConfig.diceMin;
  }

  /// おじさんとの遭遇判定
  /// @param spawnRate: 出現率（0.0-1.0）
  /// @return true: 遭遇, false: 遭遇しない
  static bool shouldEncounterOjisan(double spawnRate) {
    return _random.nextDouble() < spawnRate;
  }

  /// ランダムなおじさんを生成
  static Ojisan generateRandomOjisan([List<Map<String, dynamic>>? types]) {
    types ??= _getDefaultOjisanTypes();
    final selectedType = types[_random.nextInt(types.length)];

    return Ojisan(
      id: selectedType['id'] as String,
      name: selectedType['name'] as String,
      evilness: selectedType['evilness'] as int,
      emoji: selectedType['emoji'] as String,
      basePoints: selectedType['basePoints'] as int,
    );
  }

  /// デフォルトおじさんタイプ
  static List<Map<String, dynamic>> _getDefaultOjisanTypes() {
    return [
      {
        'id': 'mansplainer',
        'name': 'マンスプおじさん',
        'evilness': 1,
        'emoji': '🤓',
        'basePoints': 10,
      },
      {
        'id': 'stalker',
        'name': 'ストーカーおじさん',
        'evilness': 2,
        'emoji': '👀',
        'basePoints': 20,
      },
      {
        'id': 'smoker',
        'name': '路上喫煙おじさん',
        'evilness': 3,
        'emoji': '🚬',
        'basePoints': 30,
      },
      {
        'id': 'drunk',
        'name': '酔っ払いおじさん',
        'evilness': 4,
        'emoji': '🍺',
        'basePoints': 40,
      },
      {
        'id': 'harasser',
        'name': 'ハラスメントおじさん',
        'evilness': 5,
        'emoji': '😡',
        'basePoints': 50,
      },
    ];
  }

  /// タイミング判定
  /// @param timeDifference: 理想的なタイミングとの時間差（秒）
  /// @param difficulty: 難易度設定
  /// @return タイミング判定結果
  static TimingResult judgeTiming(
    double timeDifference,
    DifficultySettings difficulty,
  ) {
    final absTimeDiff = timeDifference.abs();

    if (absTimeDiff <= difficulty.perfectThreshold) {
      return TimingResult.perfect;
    } else if (absTimeDiff <= difficulty.greatThreshold) {
      return TimingResult.great;
    } else if (absTimeDiff <= difficulty.goodThreshold) {
      return TimingResult.good;
    } else {
      return TimingResult.miss;
    }
  }

  /// ポイント計算
  /// @param basePoints: おじさんの基本ポイント
  /// @param timingResult: タイミング判定結果
  /// @return 獲得ポイント
  static int calculatePoints(int basePoints, TimingResult timingResult) {
    return basePoints * timingResult.multiplier;
  }

  /// 次に移動する駅IDを計算（サイコロの出目から）
  /// @param currentStationId: 現在の駅ID
  /// @param diceValue: サイコロの出目
  /// @param totalStations: 駅の総数
  /// @return 次の駅ID
  static int calculateNextStation(
    int currentStationId,
    int diceValue,
    int totalStations,
  ) {
    // 前後に移動可能（サイコロの出目が偶数なら前進、奇数なら選択可能）
    // シンプルに前進する実装
    int nextStation = currentStationId + diceValue;

    // 終着駅を超える場合は折り返し
    if (nextStation >= totalStations) {
      final overflow = nextStation - (totalStations - 1);
      nextStation = (totalStations - 1) - overflow;
      if (nextStation < 0) nextStation = 0;
    }

    return nextStation;
  }

  /// 勝利条件チェック
  /// @param visitedStationsCount: 訪問済み駅数
  /// @param justicePoints: 正義ポイント
  /// @param ojisanDefeated: 撃退数
  /// @param totalStations: 駅の総数
  /// @return true: 勝利, false: 未達成
  static bool checkWinCondition(
    int visitedStationsCount,
    int justicePoints,
    int ojisanDefeated,
    int totalStations,
  ) {
    return visitedStationsCount >= totalStations &&
        justicePoints >= GameConfig.targetJusticePoints &&
        ojisanDefeated >= GameConfig.minOjisanDefeated;
  }

  /// ゲームオーバー条件チェック
  /// @param turnCount: 現在のターン数
  /// @return true: ゲームオーバー, false: 継続
  static bool checkGameOver(int turnCount) {
    return turnCount >= GameConfig.maxTurns;
  }

  /// おじさんの出現タイミング（ミリ秒）を計算
  /// おじさんが画面に現れてから最適なタップタイミングまでの時間
  /// @param difficulty: 難易度設定
  /// @param evilness: おじさんの悪辣度（1-5）
  /// @return 最適タイミング（ミリ秒）
  static int calculateOptimalTiming(
    DifficultySettings difficulty,
    int evilness,
  ) {
    // 基本タイミング - (悪辣度 × 100ms)
    // 悪辣度が高いほど速くなる
    final adjustment = (evilness - 1) * 100;
    return difficulty.optimalTimingBase - adjustment;
  }

  /// ランダムな遅延時間を生成（アニメーション用）
  static int getRandomDelay({int min = 100, int max = 500}) {
    return _random.nextInt(max - min) + min;
  }
}
