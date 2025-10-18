/// 駅データモデル
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

/// 駅モデル
@freezed
class Station with _$Station {
  const factory Station({
    required int id,
    required String name,
    required double x, // 画面上のX座標（0.0-1.0）
    required double y, // 画面上のY座標（0.0-1.0）
    required String emoji,
    @Default(false) bool visited, // 訪問済みフラグ
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}

/// 駅間の接続情報
@freezed
class StationConnection with _$StationConnection {
  const factory StationConnection({required int fromId, required int toId}) =
      _StationConnection;

  factory StationConnection.fromJson(Map<String, dynamic> json) =>
      _$StationConnectionFromJson(json);
}
