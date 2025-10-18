// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
  currentStationId: (json['currentStationId'] as num?)?.toInt() ?? 0,
  justicePoints: (json['justicePoints'] as num?)?.toInt() ?? 0,
  ojisanDefeated: (json['ojisanDefeated'] as num?)?.toInt() ?? 0,
  visitedStations:
      (json['visitedStations'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [0],
  turnCount: (json['turnCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'currentStationId': instance.currentStationId,
      'justicePoints': instance.justicePoints,
      'ojisanDefeated': instance.ojisanDefeated,
      'visitedStations': instance.visitedStations,
      'turnCount': instance.turnCount,
    };
