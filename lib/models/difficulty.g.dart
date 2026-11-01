// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'difficulty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DifficultySettings _$DifficultySettingsFromJson(Map<String, dynamic> json) =>
    _DifficultySettings(
      level: $enumDecode(_$DifficultyLevelEnumMap, json['level']),
      perfectThreshold: (json['perfectThreshold'] as num).toDouble(),
      greatThreshold: (json['greatThreshold'] as num).toDouble(),
      goodThreshold: (json['goodThreshold'] as num).toDouble(),
      ojisanSpawnRate: (json['ojisanSpawnRate'] as num).toDouble(),
      maxTurns: (json['maxTurns'] as num).toInt(),
      targetJusticePoints: (json['targetJusticePoints'] as num).toInt(),
      minOjisanDefeated: (json['minOjisanDefeated'] as num).toInt(),
      optimalTimingBase: (json['optimalTimingBase'] as num).toInt(),
    );

Map<String, dynamic> _$DifficultySettingsToJson(_DifficultySettings instance) =>
    <String, dynamic>{
      'level': _$DifficultyLevelEnumMap[instance.level]!,
      'perfectThreshold': instance.perfectThreshold,
      'greatThreshold': instance.greatThreshold,
      'goodThreshold': instance.goodThreshold,
      'ojisanSpawnRate': instance.ojisanSpawnRate,
      'maxTurns': instance.maxTurns,
      'targetJusticePoints': instance.targetJusticePoints,
      'minOjisanDefeated': instance.minOjisanDefeated,
      'optimalTimingBase': instance.optimalTimingBase,
    };

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.normal: 'normal',
  DifficultyLevel.hard: 'hard',
};
