/// おじさんキャラクターモデル
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ojisan.freezed.dart';
part 'ojisan.g.dart';

/// おじさんモデル
@freezed
class Ojisan with _$Ojisan {
  const factory Ojisan({
    required String id,
    required String name,
    required int evilness, // 悪辣度（1-5）
    required String emoji,
    required int basePoints, // 基本ポイント
  }) = _Ojisan;

  factory Ojisan.fromJson(Map<String, dynamic> json) => _$OjisanFromJson(json);
}

/// タイミング判定結果
enum TimingResult { perfect, great, good, miss }

/// タイミング判定結果の拡張メソッド
extension TimingResultExtension on TimingResult {
  String get displayName {
    switch (this) {
      case TimingResult.perfect:
        return 'PERFECT!';
      case TimingResult.great:
        return 'GREAT!';
      case TimingResult.good:
        return 'GOOD';
      case TimingResult.miss:
        return 'MISS...';
    }
  }

  int get multiplier {
    switch (this) {
      case TimingResult.perfect:
        return 3;
      case TimingResult.great:
        return 2;
      case TimingResult.good:
        return 1;
      case TimingResult.miss:
        return 0;
    }
  }
}

/// おじさんとの遭遇イベント
@freezed
class OjisanEncounter with _$OjisanEncounter {
  const factory OjisanEncounter({
    required Ojisan ojisan,
    required DateTime encounterTime,
    DateTime? actionStartTime,
    DateTime? tapTime,
    double? elapsedSeconds,
    TimingResult? result,
    int? pointsEarned,
  }) = _OjisanEncounter;

  factory OjisanEncounter.fromJson(Map<String, dynamic> json) =>
      _$OjisanEncounterFromJson(json);
}
