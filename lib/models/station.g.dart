// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      emoji: json['emoji'] as String,
      visited: json['visited'] as bool? ?? false,
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'x': instance.x,
      'y': instance.y,
      'emoji': instance.emoji,
      'visited': instance.visited,
    };

_$StationConnectionImpl _$$StationConnectionImplFromJson(
  Map<String, dynamic> json,
) => _$StationConnectionImpl(
  fromId: (json['fromId'] as num).toInt(),
  toId: (json['toId'] as num).toInt(),
);

Map<String, dynamic> _$$StationConnectionImplToJson(
  _$StationConnectionImpl instance,
) => <String, dynamic>{'fromId': instance.fromId, 'toId': instance.toId};
