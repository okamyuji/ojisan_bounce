// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Player {

 int get currentStationId; int get justicePoints; int get ojisanDefeated; List<int> get visitedStations; int get turnCount;
/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCopyWith<Player> get copyWith => _$PlayerCopyWithImpl<Player>(this as Player, _$identity);

  /// Serializes this Player to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Player;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Player&&(identical(other.currentStationId, _this.currentStationId) || other.currentStationId == _this.currentStationId)&&(identical(other.justicePoints, _this.justicePoints) || other.justicePoints == _this.justicePoints)&&(identical(other.ojisanDefeated, _this.ojisanDefeated) || other.ojisanDefeated == _this.ojisanDefeated)&&const DeepCollectionEquality().equals(other.visitedStations, _this.visitedStations)&&(identical(other.turnCount, _this.turnCount) || other.turnCount == _this.turnCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Player;
  return Object.hash(runtimeType,_this.currentStationId,_this.justicePoints,_this.ojisanDefeated,const DeepCollectionEquality().hash(_this.visitedStations),_this.turnCount);
}

@override
String toString() {
  final _this = this as Player;
  return 'Player(currentStationId: ${_this.currentStationId}, justicePoints: ${_this.justicePoints}, ojisanDefeated: ${_this.ojisanDefeated}, visitedStations: ${_this.visitedStations}, turnCount: ${_this.turnCount})';
}


}

/// @nodoc
abstract mixin class $PlayerCopyWith<$Res>  {
  factory $PlayerCopyWith(Player value, $Res Function(Player) _then) = _$PlayerCopyWithImpl;
@useResult
$Res call({
 int currentStationId, int justicePoints, int ojisanDefeated, List<int> visitedStations, int turnCount
});




}
/// @nodoc
class _$PlayerCopyWithImpl<$Res>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._self, this._then);

  final Player _self;
  final $Res Function(Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStationId = null,Object? justicePoints = null,Object? ojisanDefeated = null,Object? visitedStations = null,Object? turnCount = null,}) {
  return _then(Player(
currentStationId: null == currentStationId ? _self.currentStationId : currentStationId // ignore: cast_nullable_to_non_nullable
as int,justicePoints: null == justicePoints ? _self.justicePoints : justicePoints // ignore: cast_nullable_to_non_nullable
as int,ojisanDefeated: null == ojisanDefeated ? _self.ojisanDefeated : ojisanDefeated // ignore: cast_nullable_to_non_nullable
as int,visitedStations: null == visitedStations ? _self.visitedStations : visitedStations // ignore: cast_nullable_to_non_nullable
as List<int>,turnCount: null == turnCount ? _self.turnCount : turnCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Player].
extension PlayerPatterns on Player {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Player value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Player() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Player value)  $default,){
final _that = this;
switch (_that) {
case _Player():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Player value)?  $default,){
final _that = this;
switch (_that) {
case _Player() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentStationId,  int justicePoints,  int ojisanDefeated,  List<int> visitedStations,  int turnCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Player() when $default != null:
return $default(_that.currentStationId,_that.justicePoints,_that.ojisanDefeated,_that.visitedStations,_that.turnCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentStationId,  int justicePoints,  int ojisanDefeated,  List<int> visitedStations,  int turnCount)  $default,) {final _that = this;
switch (_that) {
case _Player():
return $default(_that.currentStationId,_that.justicePoints,_that.ojisanDefeated,_that.visitedStations,_that.turnCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentStationId,  int justicePoints,  int ojisanDefeated,  List<int> visitedStations,  int turnCount)?  $default,) {final _that = this;
switch (_that) {
case _Player() when $default != null:
return $default(_that.currentStationId,_that.justicePoints,_that.ojisanDefeated,_that.visitedStations,_that.turnCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Player implements Player {
  const _Player({this.currentStationId = 0, this.justicePoints = 0, this.ojisanDefeated = 0,  List<int> visitedStations = const [0], this.turnCount = 0}): _visitedStations = visitedStations;
  factory _Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

@override@JsonKey() final  int currentStationId;
@override@JsonKey() final  int justicePoints;
@override@JsonKey() final  int ojisanDefeated;
 final  List<int> _visitedStations;
@override@JsonKey() List<int> get visitedStations {
  if (_visitedStations is EqualUnmodifiableListView) return _visitedStations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visitedStations);
}

@override@JsonKey() final  int turnCount;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerCopyWith<_Player> get copyWith => __$PlayerCopyWithImpl<_Player>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Player&&(identical(other.currentStationId, currentStationId) || other.currentStationId == currentStationId)&&(identical(other.justicePoints, justicePoints) || other.justicePoints == justicePoints)&&(identical(other.ojisanDefeated, ojisanDefeated) || other.ojisanDefeated == ojisanDefeated)&&const DeepCollectionEquality().equals(other.visitedStations, _visitedStations)&&(identical(other.turnCount, turnCount) || other.turnCount == turnCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,currentStationId,justicePoints,ojisanDefeated,const DeepCollectionEquality().hash(_visitedStations),turnCount);
}

@override
String toString() {
    return 'Player(currentStationId: $currentStationId, justicePoints: $justicePoints, ojisanDefeated: $ojisanDefeated, visitedStations: $visitedStations, turnCount: $turnCount)';
}


}

/// @nodoc
abstract mixin class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) _then) = __$PlayerCopyWithImpl;
@override @useResult
$Res call({
 int currentStationId, int justicePoints, int ojisanDefeated, List<int> visitedStations, int turnCount
});




}
/// @nodoc
class __$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(this._self, this._then);

  final _Player _self;
  final $Res Function(_Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStationId = null,Object? justicePoints = null,Object? ojisanDefeated = null,Object? visitedStations = null,Object? turnCount = null,}) {
  return _then(_Player(
currentStationId: null == currentStationId ? _self.currentStationId : currentStationId // ignore: cast_nullable_to_non_nullable
as int,justicePoints: null == justicePoints ? _self.justicePoints : justicePoints // ignore: cast_nullable_to_non_nullable
as int,ojisanDefeated: null == ojisanDefeated ? _self.ojisanDefeated : ojisanDefeated // ignore: cast_nullable_to_non_nullable
as int,visitedStations: null == visitedStations ? _self._visitedStations : visitedStations // ignore: cast_nullable_to_non_nullable
as List<int>,turnCount: null == turnCount ? _self.turnCount : turnCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
