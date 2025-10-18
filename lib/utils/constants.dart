/// ゲーム全体で使用する定数定義
library;

import 'dart:ui';

/// ゲーム設定
class GameConfig {
  static const int maxTurns = 20; // 最大ターン数（デフォルト、難易度で上書きされる）
  static const int targetJusticePoints = 100; // 目標ポイント（デフォルト）
  static const int minOjisanDefeated = 10; // 最低撃退数（デフォルト）
  static const int totalStations = 7; // 駅の総数

  // サイコロの最大値
  static const int diceMax = 6;
  static const int diceMin = 1;

  // おじさん出現率（0.0-1.0）（デフォルト）
  static const double ojisanSpawnRate = 0.6;

  // メモリ管理
  static const int maxEncounterHistory = 50; // 最大履歴保持数
}

/// タイミング判定の閾値（秒）
class TimingThresholds {
  static const double perfect = 0.5; // ±0.5秒（500ms）- さらに緩和
  static const double great = 1.0; // ±1.0秒（1000ms）- さらに緩和
  static const double good = 1.5; // ±1.5秒（1500ms）- さらに緩和
}

/// ポイント倍率
class PointMultipliers {
  static const int perfect = 3;
  static const int great = 2;
  static const int good = 1;
  static const int miss = 0;
}

/// カラースキーム
class AppColors {
  // プライマリカラー
  static const Color primary = Color(0xFF00BCD4); // シアン
  static const Color secondary = Color(0xFFFF9800); // オレンジ
  static const Color accent = Color(0xFFE91E63); // ピンク

  // ステータスカラー
  static const Color success = Color(0xFF4CAF50); // グリーン
  static const Color warning = Color(0xFFFF9800); // オレンジ
  static const Color danger = Color(0xFFF44336); // レッド

  // 背景
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);

  // テキスト
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);

  // おじさん悪辣度カラー
  static const List<Color> evilnessColors = [
    Color(0xFF4CAF50), // ★1: グリーン
    Color(0xFF8BC34A), // ★2: ライトグリーン
    Color(0xFFFFC107), // ★3: アンバー
    Color(0xFFFF9800), // ★4: オレンジ
    Color(0xFFF44336), // ★5: レッド
  ];
}

/// 駅データ
class StationData {
  static const List<Map<String, dynamic>> stations = [
    {'id': 0, 'name': '始発駅', 'x': 0.1, 'y': 0.5, 'emoji': '🏠'},
    {'id': 1, 'name': '郊外駅', 'x': 0.25, 'y': 0.4, 'emoji': '🌳'},
    {'id': 2, 'name': '住宅街駅', 'x': 0.4, 'y': 0.3, 'emoji': '🏘️'},
    {'id': 3, 'name': '商業駅', 'x': 0.5, 'y': 0.5, 'emoji': '🏬'},
    {'id': 4, 'name': 'オフィス駅', 'x': 0.65, 'y': 0.6, 'emoji': '🏢'},
    {'id': 5, 'name': '繁華街駅', 'x': 0.8, 'y': 0.4, 'emoji': '🎪'},
    {'id': 6, 'name': '終着駅', 'x': 0.9, 'y': 0.5, 'emoji': '🏁'},
  ];

  /// 駅間の接続情報（路線図）
  static const Map<int, List<int>> connections = {
    0: [1],
    1: [0, 2],
    2: [1, 3],
    3: [2, 4],
    4: [3, 5],
    5: [4, 6],
    6: [5],
  };
}

/// おじさんタイプ定義
class OjisanTypes {
  static const List<Map<String, dynamic>> types = [
    {
      'id': 0,
      'name': '肩ぶつかりおじさん',
      'evilness': 1,
      'emoji': '😐',
      'basePoints': 10,
    },
    {
      'id': 1,
      'name': '舌打ちおじさん',
      'evilness': 2,
      'emoji': '😒',
      'basePoints': 20,
    },
    {
      'id': 2,
      'name': '押し込みおじさん',
      'evilness': 3,
      'emoji': '😠',
      'basePoints': 30,
    },
    {'id': 3, 'name': '大声おじさん', 'evilness': 4, 'emoji': '😡', 'basePoints': 40},
    {
      'id': 4,
      'name': '体当たりおじさん',
      'evilness': 5,
      'emoji': '👹',
      'basePoints': 50,
    },
  ];
}

/// アニメーション設定
class AnimationDurations {
  static const int playerMovement = 800; // ミリ秒
  static const int diceRoll = 1000;
  static const int ojisanAppear = 1200; // おじさん登場アニメーション（延長）
  static const int actionFeedback = 1500; // 結果表示時間（延長）
  static const int bounce = 600;
}

/// サウンドエフェクト（後で実装）
class SoundEffects {
  static const String diceRoll = 'sounds/dice_roll.mp3';
  static const String actionHit = 'sounds/hit.mp3';
  static const String actionPerfect = 'sounds/perfect.mp3';
  static const String actionGreat = 'sounds/great.mp3';
  static const String actionGood = 'sounds/good.mp3';
  static const String actionMiss = 'sounds/miss.mp3';
  static const String gameWin = 'sounds/win.mp3';
  static const String gameLose = 'sounds/lose.mp3';
}
