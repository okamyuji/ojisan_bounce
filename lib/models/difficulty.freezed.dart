// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'difficulty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DifficultySettings {

 DifficultyLevel get level; double get perfectThreshold; double get greatThreshold; double get goodThreshold; double get ojisanSpawnRate; int get maxTurns; int get targetJusticePoints; int get minOjisanDefeated; int get optimalTimingBase;
/// Create a copy of DifficultySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifficultySettingsCopyWith<DifficultySettings> get copyWith => _$DifficultySettingsCopyWithImpl<DifficultySettings>(this as DifficultySettings, _$identity);

  /// Serializes this DifficultySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DifficultySettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifficultySettings&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.perfectThreshold, _this.perfectThreshold) || other.perfectThreshold == _this.perfectThreshold)&&(identical(other.greatThreshold, _this.greatThreshold) || other.greatThreshold == _this.greatThreshold)&&(identical(other.goodThreshold, _this.goodThreshold) || other.goodThreshold == _this.goodThreshold)&&(identical(other.ojisanSpawnRate, _this.ojisanSpawnRate) || other.ojisanSpawnRate == _this.ojisanSpawnRate)&&(identical(other.maxTurns, _this.maxTurns) || other.maxTurns == _this.maxTurns)&&(identical(other.targetJusticePoints, _this.targetJusticePoints) || other.targetJusticePoints == _this.targetJusticePoints)&&(identical(other.minOjisanDefeated, _this.minOjisanDefeated) || other.minOjisanDefeated == _this.minOjisanDefeated)&&(identical(other.optimalTimingBase, _this.optimalTimingBase) || other.optimalTimingBase == _this.optimalTimingBase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DifficultySettings;
  return Object.hash(runtimeType,_this.level,_this.perfectThreshold,_this.greatThreshold,_this.goodThreshold,_this.ojisanSpawnRate,_this.maxTurns,_this.targetJusticePoints,_this.minOjisanDefeated,_this.optimalTimingBase);
}

@override
String toString() {
  final _this = this as DifficultySettings;
  return 'DifficultySettings(level: ${_this.level}, perfectThreshold: ${_this.perfectThreshold}, greatThreshold: ${_this.greatThreshold}, goodThreshold: ${_this.goodThreshold}, ojisanSpawnRate: ${_this.ojisanSpawnRate}, maxTurns: ${_this.maxTurns}, targetJusticePoints: ${_this.targetJusticePoints}, minOjisanDefeated: ${_this.minOjisanDefeated}, optimalTimingBase: ${_this.optimalTimingBase})';
}


}

/// @nodoc
abstract mixin class $DifficultySettingsCopyWith<$Res>  {
  factory $DifficultySettingsCopyWith(DifficultySettings value, $Res Function(DifficultySettings) _then) = _$DifficultySettingsCopyWithImpl;
@useResult
$Res call({
 DifficultyLevel level, double perfectThreshold, double greatThreshold, double goodThreshold, double ojisanSpawnRate, int maxTurns, int targetJusticePoints, int minOjisanDefeated, int optimalTimingBase
});




}
/// @nodoc
class _$DifficultySettingsCopyWithImpl<$Res>
    implements $DifficultySettingsCopyWith<$Res> {
  _$DifficultySettingsCopyWithImpl(this._self, this._then);

  final DifficultySettings _self;
  final $Res Function(DifficultySettings) _then;

/// Create a copy of DifficultySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? perfectThreshold = null,Object? greatThreshold = null,Object? goodThreshold = null,Object? ojisanSpawnRate = null,Object? maxTurns = null,Object? targetJusticePoints = null,Object? minOjisanDefeated = null,Object? optimalTimingBase = null,}) {
  return _then(DifficultySettings(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,perfectThreshold: null == perfectThreshold ? _self.perfectThreshold : perfectThreshold // ignore: cast_nullable_to_non_nullable
as double,greatThreshold: null == greatThreshold ? _self.greatThreshold : greatThreshold // ignore: cast_nullable_to_non_nullable
as double,goodThreshold: null == goodThreshold ? _self.goodThreshold : goodThreshold // ignore: cast_nullable_to_non_nullable
as double,ojisanSpawnRate: null == ojisanSpawnRate ? _self.ojisanSpawnRate : ojisanSpawnRate // ignore: cast_nullable_to_non_nullable
as double,maxTurns: null == maxTurns ? _self.maxTurns : maxTurns // ignore: cast_nullable_to_non_nullable
as int,targetJusticePoints: null == targetJusticePoints ? _self.targetJusticePoints : targetJusticePoints // ignore: cast_nullable_to_non_nullable
as int,minOjisanDefeated: null == minOjisanDefeated ? _self.minOjisanDefeated : minOjisanDefeated // ignore: cast_nullable_to_non_nullable
as int,optimalTimingBase: null == optimalTimingBase ? _self.optimalTimingBase : optimalTimingBase // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DifficultySettings].
extension DifficultySettingsPatterns on DifficultySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DifficultySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DifficultySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DifficultySettings value)  $default,){
final _that = this;
switch (_that) {
case _DifficultySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DifficultySettings value)?  $default,){
final _that = this;
switch (_that) {
case _DifficultySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DifficultyLevel level,  double perfectThreshold,  double greatThreshold,  double goodThreshold,  double ojisanSpawnRate,  int maxTurns,  int targetJusticePoints,  int minOjisanDefeated,  int optimalTimingBase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DifficultySettings() when $default != null:
return $default(_that.level,_that.perfectThreshold,_that.greatThreshold,_that.goodThreshold,_that.ojisanSpawnRate,_that.maxTurns,_that.targetJusticePoints,_that.minOjisanDefeated,_that.optimalTimingBase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DifficultyLevel level,  double perfectThreshold,  double greatThreshold,  double goodThreshold,  double ojisanSpawnRate,  int maxTurns,  int targetJusticePoints,  int minOjisanDefeated,  int optimalTimingBase)  $default,) {final _that = this;
switch (_that) {
case _DifficultySettings():
return $default(_that.level,_that.perfectThreshold,_that.greatThreshold,_that.goodThreshold,_that.ojisanSpawnRate,_that.maxTurns,_that.targetJusticePoints,_that.minOjisanDefeated,_that.optimalTimingBase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DifficultyLevel level,  double perfectThreshold,  double greatThreshold,  double goodThreshold,  double ojisanSpawnRate,  int maxTurns,  int targetJusticePoints,  int minOjisanDefeated,  int optimalTimingBase)?  $default,) {final _that = this;
switch (_that) {
case _DifficultySettings() when $default != null:
return $default(_that.level,_that.perfectThreshold,_that.greatThreshold,_that.goodThreshold,_that.ojisanSpawnRate,_that.maxTurns,_that.targetJusticePoints,_that.minOjisanDefeated,_that.optimalTimingBase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DifficultySettings implements DifficultySettings {
  const _DifficultySettings({required this.level, required this.perfectThreshold, required this.greatThreshold, required this.goodThreshold, required this.ojisanSpawnRate, required this.maxTurns, required this.targetJusticePoints, required this.minOjisanDefeated, required this.optimalTimingBase});
  factory _DifficultySettings.fromJson(Map<String, dynamic> json) => _$DifficultySettingsFromJson(json);

@override final  DifficultyLevel level;
@override final  double perfectThreshold;
@override final  double greatThreshold;
@override final  double goodThreshold;
@override final  double ojisanSpawnRate;
@override final  int maxTurns;
@override final  int targetJusticePoints;
@override final  int minOjisanDefeated;
@override final  int optimalTimingBase;

/// Create a copy of DifficultySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifficultySettingsCopyWith<_DifficultySettings> get copyWith => __$DifficultySettingsCopyWithImpl<_DifficultySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifficultySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifficultySettings&&(identical(other.level, level) || other.level == level)&&(identical(other.perfectThreshold, perfectThreshold) || other.perfectThreshold == perfectThreshold)&&(identical(other.greatThreshold, greatThreshold) || other.greatThreshold == greatThreshold)&&(identical(other.goodThreshold, goodThreshold) || other.goodThreshold == goodThreshold)&&(identical(other.ojisanSpawnRate, ojisanSpawnRate) || other.ojisanSpawnRate == ojisanSpawnRate)&&(identical(other.maxTurns, maxTurns) || other.maxTurns == maxTurns)&&(identical(other.targetJusticePoints, targetJusticePoints) || other.targetJusticePoints == targetJusticePoints)&&(identical(other.minOjisanDefeated, minOjisanDefeated) || other.minOjisanDefeated == minOjisanDefeated)&&(identical(other.optimalTimingBase, optimalTimingBase) || other.optimalTimingBase == optimalTimingBase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,level,perfectThreshold,greatThreshold,goodThreshold,ojisanSpawnRate,maxTurns,targetJusticePoints,minOjisanDefeated,optimalTimingBase);
}

@override
String toString() {
    return 'DifficultySettings(level: $level, perfectThreshold: $perfectThreshold, greatThreshold: $greatThreshold, goodThreshold: $goodThreshold, ojisanSpawnRate: $ojisanSpawnRate, maxTurns: $maxTurns, targetJusticePoints: $targetJusticePoints, minOjisanDefeated: $minOjisanDefeated, optimalTimingBase: $optimalTimingBase)';
}


}

/// @nodoc
abstract mixin class _$DifficultySettingsCopyWith<$Res> implements $DifficultySettingsCopyWith<$Res> {
  factory _$DifficultySettingsCopyWith(_DifficultySettings value, $Res Function(_DifficultySettings) _then) = __$DifficultySettingsCopyWithImpl;
@override @useResult
$Res call({
 DifficultyLevel level, double perfectThreshold, double greatThreshold, double goodThreshold, double ojisanSpawnRate, int maxTurns, int targetJusticePoints, int minOjisanDefeated, int optimalTimingBase
});




}
/// @nodoc
class __$DifficultySettingsCopyWithImpl<$Res>
    implements _$DifficultySettingsCopyWith<$Res> {
  __$DifficultySettingsCopyWithImpl(this._self, this._then);

  final _DifficultySettings _self;
  final $Res Function(_DifficultySettings) _then;

/// Create a copy of DifficultySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? perfectThreshold = null,Object? greatThreshold = null,Object? goodThreshold = null,Object? ojisanSpawnRate = null,Object? maxTurns = null,Object? targetJusticePoints = null,Object? minOjisanDefeated = null,Object? optimalTimingBase = null,}) {
  return _then(_DifficultySettings(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,perfectThreshold: null == perfectThreshold ? _self.perfectThreshold : perfectThreshold // ignore: cast_nullable_to_non_nullable
as double,greatThreshold: null == greatThreshold ? _self.greatThreshold : greatThreshold // ignore: cast_nullable_to_non_nullable
as double,goodThreshold: null == goodThreshold ? _self.goodThreshold : goodThreshold // ignore: cast_nullable_to_non_nullable
as double,ojisanSpawnRate: null == ojisanSpawnRate ? _self.ojisanSpawnRate : ojisanSpawnRate // ignore: cast_nullable_to_non_nullable
as double,maxTurns: null == maxTurns ? _self.maxTurns : maxTurns // ignore: cast_nullable_to_non_nullable
as int,targetJusticePoints: null == targetJusticePoints ? _self.targetJusticePoints : targetJusticePoints // ignore: cast_nullable_to_non_nullable
as int,minOjisanDefeated: null == minOjisanDefeated ? _self.minOjisanDefeated : minOjisanDefeated // ignore: cast_nullable_to_non_nullable
as int,optimalTimingBase: null == optimalTimingBase ? _self.optimalTimingBase : optimalTimingBase // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
