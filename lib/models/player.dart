/// プレイヤー状態モデル
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

/// プレイヤーモデル
@freezed
class Player with _$Player {
  const factory Player({
    @Default(0) int currentStationId, // 現在の駅ID
    @Default(0) int justicePoints, // ポイント
    @Default(0) int ojisanDefeated, // 撃退したおじさん数
    @Default([0]) List<int> visitedStations, // 訪問済み駅IDリスト
    @Default(0) int turnCount, // 現在のターン数
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

/// プレイヤーの拡張メソッド
extension PlayerExtension on Player {
  /// 全駅訪問済みか判定
  bool hasVisitedAllStations(int totalStations) {
    return visitedStations.toSet().length >= totalStations;
  }

  /// 駅を訪問済みにする
  Player visitStation(int stationId) {
    if (visitedStations.contains(stationId)) {
      return this;
    }
    return copyWith(visitedStations: [...visitedStations, stationId]);
  }

  /// ポイントを追加
  Player addJusticePoints(int points) {
    return copyWith(justicePoints: justicePoints + points);
  }

  /// おじさん撃退数を増加
  Player incrementOjisanDefeated() {
    return copyWith(ojisanDefeated: ojisanDefeated + 1);
  }

  /// ターン数を増加
  Player incrementTurn() {
    return copyWith(turnCount: turnCount + 1);
  }

  /// 駅を移動
  Player moveToStation(int stationId) {
    return copyWith(currentStationId: stationId).visitStation(stationId);
  }
}
