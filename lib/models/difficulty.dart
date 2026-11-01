/// 難易度設定
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'difficulty.freezed.dart';
part 'difficulty.g.dart';

/// 難易度レベル
enum DifficultyLevel { easy, normal, hard }

/// 難易度設定
@freezed
abstract class DifficultySettings with _$DifficultySettings {
  const factory DifficultySettings({
    required DifficultyLevel level,
    required double perfectThreshold,
    required double greatThreshold,
    required double goodThreshold,
    required double ojisanSpawnRate,
    required int maxTurns,
    required int targetJusticePoints,
    required int minOjisanDefeated,
    required int optimalTimingBase,
  }) = _DifficultySettings;

  factory DifficultySettings.fromJson(Map<String, dynamic> json) =>
      _$DifficultySettingsFromJson(json);

  /// Easy難易度設定
  factory DifficultySettings.easy() => const DifficultySettings(
    level: DifficultyLevel.easy,
    perfectThreshold: 0.30, // ±300ms
    greatThreshold: 0.60, // ±600ms
    goodThreshold: 1.00, // ±1000ms
    ojisanSpawnRate: 0.5,
    maxTurns: 25,
    targetJusticePoints: 80,
    minOjisanDefeated: 8,
    optimalTimingBase: 2500, // 2.5秒
  );

  /// Normal難易度設定（推奨）
  factory DifficultySettings.normal() => const DifficultySettings(
    level: DifficultyLevel.normal,
    perfectThreshold: 0.15, // ±150ms
    greatThreshold: 0.30, // ±300ms
    goodThreshold: 0.50, // ±500ms
    ojisanSpawnRate: 0.7,
    maxTurns: 30,
    targetJusticePoints: 150,
    minOjisanDefeated: 15,
    optimalTimingBase: 2000, // 2.0秒
  );

  /// Hard難易度設定
  factory DifficultySettings.hard() => const DifficultySettings(
    level: DifficultyLevel.hard,
    perfectThreshold: 0.05, // ±50ms
    greatThreshold: 0.10, // ±100ms
    goodThreshold: 0.20, // ±200ms
    ojisanSpawnRate: 0.8,
    maxTurns: 35,
    targetJusticePoints: 200,
    minOjisanDefeated: 20,
    optimalTimingBase: 1500, // 1.5秒
  );

  /// レベルから設定を取得
  static DifficultySettings fromLevel(DifficultyLevel level) {
    switch (level) {
      case DifficultyLevel.easy:
        return DifficultySettings.easy();
      case DifficultyLevel.normal:
        return DifficultySettings.normal();
      case DifficultyLevel.hard:
        return DifficultySettings.hard();
    }
  }
}

/// 難易度レベルの拡張
extension DifficultyLevelExtension on DifficultyLevel {
  String get displayName {
    switch (this) {
      case DifficultyLevel.easy:
        return 'かんたん';
      case DifficultyLevel.normal:
        return 'ふつう';
      case DifficultyLevel.hard:
        return 'むずかしい';
    }
  }

  String get description {
    switch (this) {
      case DifficultyLevel.easy:
        return '初心者向け - タイミングに余裕があります';
      case DifficultyLevel.normal:
        return '標準 - ほどよい難しさです';
      case DifficultyLevel.hard:
        return '上級者向け - タイミングがシビアです';
    }
  }

  String get emoji {
    switch (this) {
      case DifficultyLevel.easy:
        return '😊';
      case DifficultyLevel.normal:
        return '😐';
      case DifficultyLevel.hard:
        return '😤';
    }
  }
}
