// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ojisan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OjisanImpl _$$OjisanImplFromJson(Map<String, dynamic> json) => _$OjisanImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  evilness: (json['evilness'] as num).toInt(),
  emoji: json['emoji'] as String,
  basePoints: (json['basePoints'] as num).toInt(),
);

Map<String, dynamic> _$$OjisanImplToJson(_$OjisanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'evilness': instance.evilness,
      'emoji': instance.emoji,
      'basePoints': instance.basePoints,
    };

_$OjisanEncounterImpl _$$OjisanEncounterImplFromJson(
  Map<String, dynamic> json,
) => _$OjisanEncounterImpl(
  ojisan: Ojisan.fromJson(json['ojisan'] as Map<String, dynamic>),
  encounterTime: DateTime.parse(json['encounterTime'] as String),
  actionStartTime: json['actionStartTime'] == null
      ? null
      : DateTime.parse(json['actionStartTime'] as String),
  tapTime: json['tapTime'] == null
      ? null
      : DateTime.parse(json['tapTime'] as String),
  elapsedSeconds: (json['elapsedSeconds'] as num?)?.toDouble(),
  result: $enumDecodeNullable(_$TimingResultEnumMap, json['result']),
  pointsEarned: (json['pointsEarned'] as num?)?.toInt(),
);

Map<String, dynamic> _$$OjisanEncounterImplToJson(
  _$OjisanEncounterImpl instance,
) => <String, dynamic>{
  'ojisan': instance.ojisan,
  'encounterTime': instance.encounterTime.toIso8601String(),
  'actionStartTime': instance.actionStartTime?.toIso8601String(),
  'tapTime': instance.tapTime?.toIso8601String(),
  'elapsedSeconds': instance.elapsedSeconds,
  'result': _$TimingResultEnumMap[instance.result],
  'pointsEarned': instance.pointsEarned,
};

const _$TimingResultEnumMap = {
  TimingResult.perfect: 'perfect',
  TimingResult.great: 'great',
  TimingResult.good: 'good',
  TimingResult.miss: 'miss',
};
