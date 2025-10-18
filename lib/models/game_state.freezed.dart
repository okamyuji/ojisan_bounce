// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  Player get player => throw _privateConstructorUsedError;
  List<Station> get stations => throw _privateConstructorUsedError;
  GamePhase get phase => throw _privateConstructorUsedError;
  DifficultySettings get difficulty => throw _privateConstructorUsedError;
  int? get currentDiceValue => throw _privateConstructorUsedError;
  OjisanEncounter? get currentEncounter => throw _privateConstructorUsedError;
  List<OjisanEncounter> get encounterHistory =>
      throw _privateConstructorUsedError;
  bool get isGameWon => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({
    Player player,
    List<Station> stations,
    GamePhase phase,
    DifficultySettings difficulty,
    int? currentDiceValue,
    OjisanEncounter? currentEncounter,
    List<OjisanEncounter> encounterHistory,
    bool isGameWon,
  });

  $PlayerCopyWith<$Res> get player;
  $DifficultySettingsCopyWith<$Res> get difficulty;
  $OjisanEncounterCopyWith<$Res>? get currentEncounter;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? stations = null,
    Object? phase = null,
    Object? difficulty = null,
    Object? currentDiceValue = freezed,
    Object? currentEncounter = freezed,
    Object? encounterHistory = null,
    Object? isGameWon = null,
  }) {
    return _then(
      _value.copyWith(
            player: null == player
                ? _value.player
                : player // ignore: cast_nullable_to_non_nullable
                      as Player,
            stations: null == stations
                ? _value.stations
                : stations // ignore: cast_nullable_to_non_nullable
                      as List<Station>,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as GamePhase,
            difficulty: null == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as DifficultySettings,
            currentDiceValue: freezed == currentDiceValue
                ? _value.currentDiceValue
                : currentDiceValue // ignore: cast_nullable_to_non_nullable
                      as int?,
            currentEncounter: freezed == currentEncounter
                ? _value.currentEncounter
                : currentEncounter // ignore: cast_nullable_to_non_nullable
                      as OjisanEncounter?,
            encounterHistory: null == encounterHistory
                ? _value.encounterHistory
                : encounterHistory // ignore: cast_nullable_to_non_nullable
                      as List<OjisanEncounter>,
            isGameWon: null == isGameWon
                ? _value.isGameWon
                : isGameWon // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DifficultySettingsCopyWith<$Res> get difficulty {
    return $DifficultySettingsCopyWith<$Res>(_value.difficulty, (value) {
      return _then(_value.copyWith(difficulty: value) as $Val);
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OjisanEncounterCopyWith<$Res>? get currentEncounter {
    if (_value.currentEncounter == null) {
      return null;
    }

    return $OjisanEncounterCopyWith<$Res>(_value.currentEncounter!, (value) {
      return _then(_value.copyWith(currentEncounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
    _$GameStateImpl value,
    $Res Function(_$GameStateImpl) then,
  ) = __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Player player,
    List<Station> stations,
    GamePhase phase,
    DifficultySettings difficulty,
    int? currentDiceValue,
    OjisanEncounter? currentEncounter,
    List<OjisanEncounter> encounterHistory,
    bool isGameWon,
  });

  @override
  $PlayerCopyWith<$Res> get player;
  @override
  $DifficultySettingsCopyWith<$Res> get difficulty;
  @override
  $OjisanEncounterCopyWith<$Res>? get currentEncounter;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
    _$GameStateImpl _value,
    $Res Function(_$GameStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? stations = null,
    Object? phase = null,
    Object? difficulty = null,
    Object? currentDiceValue = freezed,
    Object? currentEncounter = freezed,
    Object? encounterHistory = null,
    Object? isGameWon = null,
  }) {
    return _then(
      _$GameStateImpl(
        player: null == player
            ? _value.player
            : player // ignore: cast_nullable_to_non_nullable
                  as Player,
        stations: null == stations
            ? _value._stations
            : stations // ignore: cast_nullable_to_non_nullable
                  as List<Station>,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as GamePhase,
        difficulty: null == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as DifficultySettings,
        currentDiceValue: freezed == currentDiceValue
            ? _value.currentDiceValue
            : currentDiceValue // ignore: cast_nullable_to_non_nullable
                  as int?,
        currentEncounter: freezed == currentEncounter
            ? _value.currentEncounter
            : currentEncounter // ignore: cast_nullable_to_non_nullable
                  as OjisanEncounter?,
        encounterHistory: null == encounterHistory
            ? _value._encounterHistory
            : encounterHistory // ignore: cast_nullable_to_non_nullable
                  as List<OjisanEncounter>,
        isGameWon: null == isGameWon
            ? _value.isGameWon
            : isGameWon // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl implements _GameState {
  const _$GameStateImpl({
    required this.player,
    required final List<Station> stations,
    required this.phase,
    required this.difficulty,
    this.currentDiceValue = null,
    this.currentEncounter = null,
    final List<OjisanEncounter> encounterHistory = const [],
    this.isGameWon = false,
  }) : _stations = stations,
       _encounterHistory = encounterHistory;

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

  @override
  final Player player;
  final List<Station> _stations;
  @override
  List<Station> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  final GamePhase phase;
  @override
  final DifficultySettings difficulty;
  @override
  @JsonKey()
  final int? currentDiceValue;
  @override
  @JsonKey()
  final OjisanEncounter? currentEncounter;
  final List<OjisanEncounter> _encounterHistory;
  @override
  @JsonKey()
  List<OjisanEncounter> get encounterHistory {
    if (_encounterHistory is EqualUnmodifiableListView)
      return _encounterHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_encounterHistory);
  }

  @override
  @JsonKey()
  final bool isGameWon;

  @override
  String toString() {
    return 'GameState(player: $player, stations: $stations, phase: $phase, difficulty: $difficulty, currentDiceValue: $currentDiceValue, currentEncounter: $currentEncounter, encounterHistory: $encounterHistory, isGameWon: $isGameWon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.currentDiceValue, currentDiceValue) ||
                other.currentDiceValue == currentDiceValue) &&
            (identical(other.currentEncounter, currentEncounter) ||
                other.currentEncounter == currentEncounter) &&
            const DeepCollectionEquality().equals(
              other._encounterHistory,
              _encounterHistory,
            ) &&
            (identical(other.isGameWon, isGameWon) ||
                other.isGameWon == isGameWon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    player,
    const DeepCollectionEquality().hash(_stations),
    phase,
    difficulty,
    currentDiceValue,
    currentEncounter,
    const DeepCollectionEquality().hash(_encounterHistory),
    isGameWon,
  );

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(this);
  }
}

abstract class _GameState implements GameState {
  const factory _GameState({
    required final Player player,
    required final List<Station> stations,
    required final GamePhase phase,
    required final DifficultySettings difficulty,
    final int? currentDiceValue,
    final OjisanEncounter? currentEncounter,
    final List<OjisanEncounter> encounterHistory,
    final bool isGameWon,
  }) = _$GameStateImpl;

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

  @override
  Player get player;
  @override
  List<Station> get stations;
  @override
  GamePhase get phase;
  @override
  DifficultySettings get difficulty;
  @override
  int? get currentDiceValue;
  @override
  OjisanEncounter? get currentEncounter;
  @override
  List<OjisanEncounter> get encounterHistory;
  @override
  bool get isGameWon;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
