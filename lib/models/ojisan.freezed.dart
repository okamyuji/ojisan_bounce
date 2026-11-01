// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ojisan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ojisan {

 String get id; String get name; int get evilness; String get emoji; int get basePoints;
/// Create a copy of Ojisan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OjisanCopyWith<Ojisan> get copyWith => _$OjisanCopyWithImpl<Ojisan>(this as Ojisan, _$identity);

  /// Serializes this Ojisan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Ojisan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ojisan&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.evilness, _this.evilness) || other.evilness == _this.evilness)&&(identical(other.emoji, _this.emoji) || other.emoji == _this.emoji)&&(identical(other.basePoints, _this.basePoints) || other.basePoints == _this.basePoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Ojisan;
  return Object.hash(runtimeType,_this.id,_this.name,_this.evilness,_this.emoji,_this.basePoints);
}

@override
String toString() {
  final _this = this as Ojisan;
  return 'Ojisan(id: ${_this.id}, name: ${_this.name}, evilness: ${_this.evilness}, emoji: ${_this.emoji}, basePoints: ${_this.basePoints})';
}


}

/// @nodoc
abstract mixin class $OjisanCopyWith<$Res>  {
  factory $OjisanCopyWith(Ojisan value, $Res Function(Ojisan) _then) = _$OjisanCopyWithImpl;
@useResult
$Res call({
 String id, String name, int evilness, String emoji, int basePoints
});




}
/// @nodoc
class _$OjisanCopyWithImpl<$Res>
    implements $OjisanCopyWith<$Res> {
  _$OjisanCopyWithImpl(this._self, this._then);

  final Ojisan _self;
  final $Res Function(Ojisan) _then;

/// Create a copy of Ojisan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? evilness = null,Object? emoji = null,Object? basePoints = null,}) {
  return _then(Ojisan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,evilness: null == evilness ? _self.evilness : evilness // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,basePoints: null == basePoints ? _self.basePoints : basePoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Ojisan].
extension OjisanPatterns on Ojisan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ojisan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ojisan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ojisan value)  $default,){
final _that = this;
switch (_that) {
case _Ojisan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ojisan value)?  $default,){
final _that = this;
switch (_that) {
case _Ojisan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int evilness,  String emoji,  int basePoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ojisan() when $default != null:
return $default(_that.id,_that.name,_that.evilness,_that.emoji,_that.basePoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int evilness,  String emoji,  int basePoints)  $default,) {final _that = this;
switch (_that) {
case _Ojisan():
return $default(_that.id,_that.name,_that.evilness,_that.emoji,_that.basePoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int evilness,  String emoji,  int basePoints)?  $default,) {final _that = this;
switch (_that) {
case _Ojisan() when $default != null:
return $default(_that.id,_that.name,_that.evilness,_that.emoji,_that.basePoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ojisan implements Ojisan {
  const _Ojisan({required this.id, required this.name, required this.evilness, required this.emoji, required this.basePoints});
  factory _Ojisan.fromJson(Map<String, dynamic> json) => _$OjisanFromJson(json);

@override final  String id;
@override final  String name;
@override final  int evilness;
@override final  String emoji;
@override final  int basePoints;

/// Create a copy of Ojisan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OjisanCopyWith<_Ojisan> get copyWith => __$OjisanCopyWithImpl<_Ojisan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OjisanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ojisan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.evilness, evilness) || other.evilness == evilness)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.basePoints, basePoints) || other.basePoints == basePoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,evilness,emoji,basePoints);
}

@override
String toString() {
    return 'Ojisan(id: $id, name: $name, evilness: $evilness, emoji: $emoji, basePoints: $basePoints)';
}


}

/// @nodoc
abstract mixin class _$OjisanCopyWith<$Res> implements $OjisanCopyWith<$Res> {
  factory _$OjisanCopyWith(_Ojisan value, $Res Function(_Ojisan) _then) = __$OjisanCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int evilness, String emoji, int basePoints
});




}
/// @nodoc
class __$OjisanCopyWithImpl<$Res>
    implements _$OjisanCopyWith<$Res> {
  __$OjisanCopyWithImpl(this._self, this._then);

  final _Ojisan _self;
  final $Res Function(_Ojisan) _then;

/// Create a copy of Ojisan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? evilness = null,Object? emoji = null,Object? basePoints = null,}) {
  return _then(_Ojisan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,evilness: null == evilness ? _self.evilness : evilness // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,basePoints: null == basePoints ? _self.basePoints : basePoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OjisanEncounter {

 Ojisan get ojisan; DateTime get encounterTime; DateTime? get actionStartTime; DateTime? get tapTime; double? get elapsedSeconds; TimingResult? get result; int? get pointsEarned;
/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OjisanEncounterCopyWith<OjisanEncounter> get copyWith => _$OjisanEncounterCopyWithImpl<OjisanEncounter>(this as OjisanEncounter, _$identity);

  /// Serializes this OjisanEncounter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OjisanEncounter;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OjisanEncounter&&(identical(other.ojisan, _this.ojisan) || other.ojisan == _this.ojisan)&&(identical(other.encounterTime, _this.encounterTime) || other.encounterTime == _this.encounterTime)&&(identical(other.actionStartTime, _this.actionStartTime) || other.actionStartTime == _this.actionStartTime)&&(identical(other.tapTime, _this.tapTime) || other.tapTime == _this.tapTime)&&(identical(other.elapsedSeconds, _this.elapsedSeconds) || other.elapsedSeconds == _this.elapsedSeconds)&&(identical(other.result, _this.result) || other.result == _this.result)&&(identical(other.pointsEarned, _this.pointsEarned) || other.pointsEarned == _this.pointsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OjisanEncounter;
  return Object.hash(runtimeType,_this.ojisan,_this.encounterTime,_this.actionStartTime,_this.tapTime,_this.elapsedSeconds,_this.result,_this.pointsEarned);
}

@override
String toString() {
  final _this = this as OjisanEncounter;
  return 'OjisanEncounter(ojisan: ${_this.ojisan}, encounterTime: ${_this.encounterTime}, actionStartTime: ${_this.actionStartTime}, tapTime: ${_this.tapTime}, elapsedSeconds: ${_this.elapsedSeconds}, result: ${_this.result}, pointsEarned: ${_this.pointsEarned})';
}


}

/// @nodoc
abstract mixin class $OjisanEncounterCopyWith<$Res>  {
  factory $OjisanEncounterCopyWith(OjisanEncounter value, $Res Function(OjisanEncounter) _then) = _$OjisanEncounterCopyWithImpl;
@useResult
$Res call({
 Ojisan ojisan, DateTime encounterTime, DateTime? actionStartTime, DateTime? tapTime, double? elapsedSeconds, TimingResult? result, int? pointsEarned
});


$OjisanCopyWith<$Res> get ojisan;

}
/// @nodoc
class _$OjisanEncounterCopyWithImpl<$Res>
    implements $OjisanEncounterCopyWith<$Res> {
  _$OjisanEncounterCopyWithImpl(this._self, this._then);

  final OjisanEncounter _self;
  final $Res Function(OjisanEncounter) _then;

/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ojisan = null,Object? encounterTime = null,Object? actionStartTime = freezed,Object? tapTime = freezed,Object? elapsedSeconds = freezed,Object? result = freezed,Object? pointsEarned = freezed,}) {
  return _then(OjisanEncounter(
ojisan: null == ojisan ? _self.ojisan : ojisan // ignore: cast_nullable_to_non_nullable
as Ojisan,encounterTime: null == encounterTime ? _self.encounterTime : encounterTime // ignore: cast_nullable_to_non_nullable
as DateTime,actionStartTime: freezed == actionStartTime ? _self.actionStartTime : actionStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,tapTime: freezed == tapTime ? _self.tapTime : tapTime // ignore: cast_nullable_to_non_nullable
as DateTime?,elapsedSeconds: freezed == elapsedSeconds ? _self.elapsedSeconds : elapsedSeconds // ignore: cast_nullable_to_non_nullable
as double?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as TimingResult?,pointsEarned: freezed == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OjisanCopyWith<$Res> get ojisan {
  
  return $OjisanCopyWith<$Res>(_self.ojisan, (value) {
    return _then(_self.copyWith(ojisan: value));
  });
}
}


/// Adds pattern-matching-related methods to [OjisanEncounter].
extension OjisanEncounterPatterns on OjisanEncounter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OjisanEncounter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OjisanEncounter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OjisanEncounter value)  $default,){
final _that = this;
switch (_that) {
case _OjisanEncounter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OjisanEncounter value)?  $default,){
final _that = this;
switch (_that) {
case _OjisanEncounter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Ojisan ojisan,  DateTime encounterTime,  DateTime? actionStartTime,  DateTime? tapTime,  double? elapsedSeconds,  TimingResult? result,  int? pointsEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OjisanEncounter() when $default != null:
return $default(_that.ojisan,_that.encounterTime,_that.actionStartTime,_that.tapTime,_that.elapsedSeconds,_that.result,_that.pointsEarned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Ojisan ojisan,  DateTime encounterTime,  DateTime? actionStartTime,  DateTime? tapTime,  double? elapsedSeconds,  TimingResult? result,  int? pointsEarned)  $default,) {final _that = this;
switch (_that) {
case _OjisanEncounter():
return $default(_that.ojisan,_that.encounterTime,_that.actionStartTime,_that.tapTime,_that.elapsedSeconds,_that.result,_that.pointsEarned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Ojisan ojisan,  DateTime encounterTime,  DateTime? actionStartTime,  DateTime? tapTime,  double? elapsedSeconds,  TimingResult? result,  int? pointsEarned)?  $default,) {final _that = this;
switch (_that) {
case _OjisanEncounter() when $default != null:
return $default(_that.ojisan,_that.encounterTime,_that.actionStartTime,_that.tapTime,_that.elapsedSeconds,_that.result,_that.pointsEarned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OjisanEncounter implements OjisanEncounter {
  const _OjisanEncounter({required this.ojisan, required this.encounterTime, this.actionStartTime, this.tapTime, this.elapsedSeconds, this.result, this.pointsEarned});
  factory _OjisanEncounter.fromJson(Map<String, dynamic> json) => _$OjisanEncounterFromJson(json);

@override final  Ojisan ojisan;
@override final  DateTime encounterTime;
@override final  DateTime? actionStartTime;
@override final  DateTime? tapTime;
@override final  double? elapsedSeconds;
@override final  TimingResult? result;
@override final  int? pointsEarned;

/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OjisanEncounterCopyWith<_OjisanEncounter> get copyWith => __$OjisanEncounterCopyWithImpl<_OjisanEncounter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OjisanEncounterToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OjisanEncounter&&(identical(other.ojisan, ojisan) || other.ojisan == ojisan)&&(identical(other.encounterTime, encounterTime) || other.encounterTime == encounterTime)&&(identical(other.actionStartTime, actionStartTime) || other.actionStartTime == actionStartTime)&&(identical(other.tapTime, tapTime) || other.tapTime == tapTime)&&(identical(other.elapsedSeconds, elapsedSeconds) || other.elapsedSeconds == elapsedSeconds)&&(identical(other.result, result) || other.result == result)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ojisan,encounterTime,actionStartTime,tapTime,elapsedSeconds,result,pointsEarned);
}

@override
String toString() {
    return 'OjisanEncounter(ojisan: $ojisan, encounterTime: $encounterTime, actionStartTime: $actionStartTime, tapTime: $tapTime, elapsedSeconds: $elapsedSeconds, result: $result, pointsEarned: $pointsEarned)';
}


}

/// @nodoc
abstract mixin class _$OjisanEncounterCopyWith<$Res> implements $OjisanEncounterCopyWith<$Res> {
  factory _$OjisanEncounterCopyWith(_OjisanEncounter value, $Res Function(_OjisanEncounter) _then) = __$OjisanEncounterCopyWithImpl;
@override @useResult
$Res call({
 Ojisan ojisan, DateTime encounterTime, DateTime? actionStartTime, DateTime? tapTime, double? elapsedSeconds, TimingResult? result, int? pointsEarned
});


@override $OjisanCopyWith<$Res> get ojisan;

}
/// @nodoc
class __$OjisanEncounterCopyWithImpl<$Res>
    implements _$OjisanEncounterCopyWith<$Res> {
  __$OjisanEncounterCopyWithImpl(this._self, this._then);

  final _OjisanEncounter _self;
  final $Res Function(_OjisanEncounter) _then;

/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ojisan = null,Object? encounterTime = null,Object? actionStartTime = freezed,Object? tapTime = freezed,Object? elapsedSeconds = freezed,Object? result = freezed,Object? pointsEarned = freezed,}) {
  return _then(_OjisanEncounter(
ojisan: null == ojisan ? _self.ojisan : ojisan // ignore: cast_nullable_to_non_nullable
as Ojisan,encounterTime: null == encounterTime ? _self.encounterTime : encounterTime // ignore: cast_nullable_to_non_nullable
as DateTime,actionStartTime: freezed == actionStartTime ? _self.actionStartTime : actionStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,tapTime: freezed == tapTime ? _self.tapTime : tapTime // ignore: cast_nullable_to_non_nullable
as DateTime?,elapsedSeconds: freezed == elapsedSeconds ? _self.elapsedSeconds : elapsedSeconds // ignore: cast_nullable_to_non_nullable
as double?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as TimingResult?,pointsEarned: freezed == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OjisanEncounter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OjisanCopyWith<$Res> get ojisan {
  
  return $OjisanCopyWith<$Res>(_self.ojisan, (value) {
    return _then(_self.copyWith(ojisan: value));
  });
}
}

// dart format on
