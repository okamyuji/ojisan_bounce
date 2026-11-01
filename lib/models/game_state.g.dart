// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameState _$GameStateFromJson(Map<String, dynamic> json) => _GameState(
  player: Player.fromJson(json['player'] as Map<String, dynamic>),
  stations: (json['stations'] as List<dynamic>)
      .map((e) => Station.fromJson(e as Map<String, dynamic>))
      .toList(),
  phase: $enumDecode(_$GamePhaseEnumMap, json['phase']),
  difficulty: DifficultySettings.fromJson(
    json['difficulty'] as Map<String, dynamic>,
  ),
  currentDiceValue: (json['currentDiceValue'] as num?)?.toInt() ?? null,
  currentEncounter: json['currentEncounter'] == null
      ? null
      : OjisanEncounter.fromJson(
          json['currentEncounter'] as Map<String, dynamic>,
        ),
  encounterHistory:
      (json['encounterHistory'] as List<dynamic>?)
          ?.map((e) => OjisanEncounter.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isGameWon: json['isGameWon'] as bool? ?? false,
);

Map<String, dynamic> _$GameStateToJson(_GameState instance) =>
    <String, dynamic>{
      'player': instance.player,
      'stations': instance.stations,
      'phase': _$GamePhaseEnumMap[instance.phase]!,
      'difficulty': instance.difficulty,
      'currentDiceValue': instance.currentDiceValue,
      'currentEncounter': instance.currentEncounter,
      'encounterHistory': instance.encounterHistory,
      'isGameWon': instance.isGameWon,
    };

const _$GamePhaseEnumMap = {
  GamePhase.idle: 'idle',
  GamePhase.rollingDice: 'rollingDice',
  GamePhase.moving: 'moving',
  GamePhase.encounter: 'encounter',
  GamePhase.action: 'action',
  GamePhase.result: 'result',
  GamePhase.gameOver: 'gameOver',
};
