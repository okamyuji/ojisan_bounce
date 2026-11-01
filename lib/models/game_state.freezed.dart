// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameState implements DiagnosticableTreeMixin {

 Player get player; List<Station> get stations; GamePhase get phase; DifficultySettings get difficulty; int? get currentDiceValue; OjisanEncounter? get currentEncounter; List<OjisanEncounter> get encounterHistory; bool get isGameWon;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as GameState;
  properties
    ..add(DiagnosticsProperty('type', 'GameState'))
    ..add(DiagnosticsProperty('player', _this.player))..add(DiagnosticsProperty('stations', _this.stations))..add(DiagnosticsProperty('phase', _this.phase))..add(DiagnosticsProperty('difficulty', _this.difficulty))..add(DiagnosticsProperty('currentDiceValue', _this.currentDiceValue))..add(DiagnosticsProperty('currentEncounter', _this.currentEncounter))..add(DiagnosticsProperty('encounterHistory', _this.encounterHistory))..add(DiagnosticsProperty('isGameWon', _this.isGameWon));
}

@override
bool operator ==(Object other) {
  final _this = this as GameState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.player, _this.player) || other.player == _this.player)&&const DeepCollectionEquality().equals(other.stations, _this.stations)&&(identical(other.phase, _this.phase) || other.phase == _this.phase)&&(identical(other.difficulty, _this.difficulty) || other.difficulty == _this.difficulty)&&(identical(other.currentDiceValue, _this.currentDiceValue) || other.currentDiceValue == _this.currentDiceValue)&&(identical(other.currentEncounter, _this.currentEncounter) || other.currentEncounter == _this.currentEncounter)&&const DeepCollectionEquality().equals(other.encounterHistory, _this.encounterHistory)&&(identical(other.isGameWon, _this.isGameWon) || other.isGameWon == _this.isGameWon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GameState;
  return Object.hash(runtimeType,_this.player,const DeepCollectionEquality().hash(_this.stations),_this.phase,_this.difficulty,_this.currentDiceValue,_this.currentEncounter,const DeepCollectionEquality().hash(_this.encounterHistory),_this.isGameWon);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as GameState;
  return 'GameState(player: ${_this.player}, stations: ${_this.stations}, phase: ${_this.phase}, difficulty: ${_this.difficulty}, currentDiceValue: ${_this.currentDiceValue}, currentEncounter: ${_this.currentEncounter}, encounterHistory: ${_this.encounterHistory}, isGameWon: ${_this.isGameWon})';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 Player player, List<Station> stations, GamePhase phase, DifficultySettings difficulty, int? currentDiceValue, OjisanEncounter? currentEncounter, List<OjisanEncounter> encounterHistory, bool isGameWon
});


$PlayerCopyWith<$Res> get player;$DifficultySettingsCopyWith<$Res> get difficulty;$OjisanEncounterCopyWith<$Res>? get currentEncounter;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player = null,Object? stations = null,Object? phase = null,Object? difficulty = null,Object? currentDiceValue = freezed,Object? currentEncounter = freezed,Object? encounterHistory = null,Object? isGameWon = null,}) {
  return _then(GameState(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,stations: null == stations ? _self.stations : stations // ignore: cast_nullable_to_non_nullable
as List<Station>,phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as GamePhase,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultySettings,currentDiceValue: freezed == currentDiceValue ? _self.currentDiceValue : currentDiceValue // ignore: cast_nullable_to_non_nullable
as int?,currentEncounter: freezed == currentEncounter ? _self.currentEncounter : currentEncounter // ignore: cast_nullable_to_non_nullable
as OjisanEncounter?,encounterHistory: null == encounterHistory ? _self.encounterHistory : encounterHistory // ignore: cast_nullable_to_non_nullable
as List<OjisanEncounter>,isGameWon: null == isGameWon ? _self.isGameWon : isGameWon // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DifficultySettingsCopyWith<$Res> get difficulty {
  
  return $DifficultySettingsCopyWith<$Res>(_self.difficulty, (value) {
    return _then(_self.copyWith(difficulty: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OjisanEncounterCopyWith<$Res>? get currentEncounter {
    if (_self.currentEncounter == null) {
    return null;
  }

  return $OjisanEncounterCopyWith<$Res>(_self.currentEncounter!, (value) {
    return _then(_self.copyWith(currentEncounter: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Player player,  List<Station> stations,  GamePhase phase,  DifficultySettings difficulty,  int? currentDiceValue,  OjisanEncounter? currentEncounter,  List<OjisanEncounter> encounterHistory,  bool isGameWon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.player,_that.stations,_that.phase,_that.difficulty,_that.currentDiceValue,_that.currentEncounter,_that.encounterHistory,_that.isGameWon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Player player,  List<Station> stations,  GamePhase phase,  DifficultySettings difficulty,  int? currentDiceValue,  OjisanEncounter? currentEncounter,  List<OjisanEncounter> encounterHistory,  bool isGameWon)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.player,_that.stations,_that.phase,_that.difficulty,_that.currentDiceValue,_that.currentEncounter,_that.encounterHistory,_that.isGameWon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Player player,  List<Station> stations,  GamePhase phase,  DifficultySettings difficulty,  int? currentDiceValue,  OjisanEncounter? currentEncounter,  List<OjisanEncounter> encounterHistory,  bool isGameWon)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.player,_that.stations,_that.phase,_that.difficulty,_that.currentDiceValue,_that.currentEncounter,_that.encounterHistory,_that.isGameWon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameState with DiagnosticableTreeMixin implements GameState {
  const _GameState({required this.player, required  List<Station> stations, required this.phase, required this.difficulty, this.currentDiceValue = null, this.currentEncounter = null,  List<OjisanEncounter> encounterHistory = const [], this.isGameWon = false}): _stations = stations,_encounterHistory = encounterHistory;
  factory _GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);

@override final  Player player;
 final  List<Station> _stations;
@override List<Station> get stations {
  if (_stations is EqualUnmodifiableListView) return _stations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stations);
}

@override final  GamePhase phase;
@override final  DifficultySettings difficulty;
@override@JsonKey() final  int? currentDiceValue;
@override@JsonKey() final  OjisanEncounter? currentEncounter;
 final  List<OjisanEncounter> _encounterHistory;
@override@JsonKey() List<OjisanEncounter> get encounterHistory {
  if (_encounterHistory is EqualUnmodifiableListView) return _encounterHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_encounterHistory);
}

@override@JsonKey() final  bool isGameWon;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStateToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'GameState'))
    ..add(DiagnosticsProperty('player', player))..add(DiagnosticsProperty('stations', stations))..add(DiagnosticsProperty('phase', phase))..add(DiagnosticsProperty('difficulty', difficulty))..add(DiagnosticsProperty('currentDiceValue', currentDiceValue))..add(DiagnosticsProperty('currentEncounter', currentEncounter))..add(DiagnosticsProperty('encounterHistory', encounterHistory))..add(DiagnosticsProperty('isGameWon', isGameWon));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.player, player) || other.player == player)&&const DeepCollectionEquality().equals(other.stations, _stations)&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.currentDiceValue, currentDiceValue) || other.currentDiceValue == currentDiceValue)&&(identical(other.currentEncounter, currentEncounter) || other.currentEncounter == currentEncounter)&&const DeepCollectionEquality().equals(other.encounterHistory, _encounterHistory)&&(identical(other.isGameWon, isGameWon) || other.isGameWon == isGameWon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,player,const DeepCollectionEquality().hash(_stations),phase,difficulty,currentDiceValue,currentEncounter,const DeepCollectionEquality().hash(_encounterHistory),isGameWon);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'GameState(player: $player, stations: $stations, phase: $phase, difficulty: $difficulty, currentDiceValue: $currentDiceValue, currentEncounter: $currentEncounter, encounterHistory: $encounterHistory, isGameWon: $isGameWon)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 Player player, List<Station> stations, GamePhase phase, DifficultySettings difficulty, int? currentDiceValue, OjisanEncounter? currentEncounter, List<OjisanEncounter> encounterHistory, bool isGameWon
});


@override $PlayerCopyWith<$Res> get player;@override $DifficultySettingsCopyWith<$Res> get difficulty;@override $OjisanEncounterCopyWith<$Res>? get currentEncounter;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? player = null,Object? stations = null,Object? phase = null,Object? difficulty = null,Object? currentDiceValue = freezed,Object? currentEncounter = freezed,Object? encounterHistory = null,Object? isGameWon = null,}) {
  return _then(_GameState(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,stations: null == stations ? _self._stations : stations // ignore: cast_nullable_to_non_nullable
as List<Station>,phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as GamePhase,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultySettings,currentDiceValue: freezed == currentDiceValue ? _self.currentDiceValue : currentDiceValue // ignore: cast_nullable_to_non_nullable
as int?,currentEncounter: freezed == currentEncounter ? _self.currentEncounter : currentEncounter // ignore: cast_nullable_to_non_nullable
as OjisanEncounter?,encounterHistory: null == encounterHistory ? _self._encounterHistory : encounterHistory // ignore: cast_nullable_to_non_nullable
as List<OjisanEncounter>,isGameWon: null == isGameWon ? _self.isGameWon : isGameWon // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DifficultySettingsCopyWith<$Res> get difficulty {
  
  return $DifficultySettingsCopyWith<$Res>(_self.difficulty, (value) {
    return _then(_self.copyWith(difficulty: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OjisanEncounterCopyWith<$Res>? get currentEncounter {
    if (_self.currentEncounter == null) {
    return null;
  }

  return $OjisanEncounterCopyWith<$Res>(_self.currentEncounter!, (value) {
    return _then(_self.copyWith(currentEncounter: value));
  });
}
}

// dart format on
