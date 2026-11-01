// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Station _$StationFromJson(Map<String, dynamic> json) => _Station(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
  emoji: json['emoji'] as String,
  visited: json['visited'] as bool? ?? false,
);

Map<String, dynamic> _$StationToJson(_Station instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'x': instance.x,
  'y': instance.y,
  'emoji': instance.emoji,
  'visited': instance.visited,
};

_StationConnection _$StationConnectionFromJson(Map<String, dynamic> json) =>
    _StationConnection(
      fromId: (json['fromId'] as num).toInt(),
      toId: (json['toId'] as num).toInt(),
    );

Map<String, dynamic> _$StationConnectionToJson(_StationConnection instance) =>
    <String, dynamic>{'fromId': instance.fromId, 'toId': instance.toId};
