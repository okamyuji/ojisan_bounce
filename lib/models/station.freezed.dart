// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Station {

 int get id; String get name; double get x; double get y; String get emoji; bool get visited;
/// Create a copy of Station
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationCopyWith<Station> get copyWith => _$StationCopyWithImpl<Station>(this as Station, _$identity);

  /// Serializes this Station to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Station;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Station&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.x, _this.x) || other.x == _this.x)&&(identical(other.y, _this.y) || other.y == _this.y)&&(identical(other.emoji, _this.emoji) || other.emoji == _this.emoji)&&(identical(other.visited, _this.visited) || other.visited == _this.visited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Station;
  return Object.hash(runtimeType,_this.id,_this.name,_this.x,_this.y,_this.emoji,_this.visited);
}

@override
String toString() {
  final _this = this as Station;
  return 'Station(id: ${_this.id}, name: ${_this.name}, x: ${_this.x}, y: ${_this.y}, emoji: ${_this.emoji}, visited: ${_this.visited})';
}


}

/// @nodoc
abstract mixin class $StationCopyWith<$Res>  {
  factory $StationCopyWith(Station value, $Res Function(Station) _then) = _$StationCopyWithImpl;
@useResult
$Res call({
 int id, String name, double x, double y, String emoji, bool visited
});




}
/// @nodoc
class _$StationCopyWithImpl<$Res>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._self, this._then);

  final Station _self;
  final $Res Function(Station) _then;

/// Create a copy of Station
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? x = null,Object? y = null,Object? emoji = null,Object? visited = null,}) {
  return _then(Station(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,visited: null == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Station].
extension StationPatterns on Station {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Station value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Station() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Station value)  $default,){
final _that = this;
switch (_that) {
case _Station():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Station value)?  $default,){
final _that = this;
switch (_that) {
case _Station() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double x,  double y,  String emoji,  bool visited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Station() when $default != null:
return $default(_that.id,_that.name,_that.x,_that.y,_that.emoji,_that.visited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double x,  double y,  String emoji,  bool visited)  $default,) {final _that = this;
switch (_that) {
case _Station():
return $default(_that.id,_that.name,_that.x,_that.y,_that.emoji,_that.visited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double x,  double y,  String emoji,  bool visited)?  $default,) {final _that = this;
switch (_that) {
case _Station() when $default != null:
return $default(_that.id,_that.name,_that.x,_that.y,_that.emoji,_that.visited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Station implements Station {
  const _Station({required this.id, required this.name, required this.x, required this.y, required this.emoji, this.visited = false});
  factory _Station.fromJson(Map<String, dynamic> json) => _$StationFromJson(json);

@override final  int id;
@override final  String name;
@override final  double x;
@override final  double y;
@override final  String emoji;
@override@JsonKey() final  bool visited;

/// Create a copy of Station
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationCopyWith<_Station> get copyWith => __$StationCopyWithImpl<_Station>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Station&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.visited, visited) || other.visited == visited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,x,y,emoji,visited);
}

@override
String toString() {
    return 'Station(id: $id, name: $name, x: $x, y: $y, emoji: $emoji, visited: $visited)';
}


}

/// @nodoc
abstract mixin class _$StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$StationCopyWith(_Station value, $Res Function(_Station) _then) = __$StationCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double x, double y, String emoji, bool visited
});




}
/// @nodoc
class __$StationCopyWithImpl<$Res>
    implements _$StationCopyWith<$Res> {
  __$StationCopyWithImpl(this._self, this._then);

  final _Station _self;
  final $Res Function(_Station) _then;

/// Create a copy of Station
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? x = null,Object? y = null,Object? emoji = null,Object? visited = null,}) {
  return _then(_Station(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,visited: null == visited ? _self.visited : visited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StationConnection {

 int get fromId; int get toId;
/// Create a copy of StationConnection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationConnectionCopyWith<StationConnection> get copyWith => _$StationConnectionCopyWithImpl<StationConnection>(this as StationConnection, _$identity);

  /// Serializes this StationConnection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StationConnection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationConnection&&(identical(other.fromId, _this.fromId) || other.fromId == _this.fromId)&&(identical(other.toId, _this.toId) || other.toId == _this.toId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StationConnection;
  return Object.hash(runtimeType,_this.fromId,_this.toId);
}

@override
String toString() {
  final _this = this as StationConnection;
  return 'StationConnection(fromId: ${_this.fromId}, toId: ${_this.toId})';
}


}

/// @nodoc
abstract mixin class $StationConnectionCopyWith<$Res>  {
  factory $StationConnectionCopyWith(StationConnection value, $Res Function(StationConnection) _then) = _$StationConnectionCopyWithImpl;
@useResult
$Res call({
 int fromId, int toId
});




}
/// @nodoc
class _$StationConnectionCopyWithImpl<$Res>
    implements $StationConnectionCopyWith<$Res> {
  _$StationConnectionCopyWithImpl(this._self, this._then);

  final StationConnection _self;
  final $Res Function(StationConnection) _then;

/// Create a copy of StationConnection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromId = null,Object? toId = null,}) {
  return _then(StationConnection(
fromId: null == fromId ? _self.fromId : fromId // ignore: cast_nullable_to_non_nullable
as int,toId: null == toId ? _self.toId : toId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StationConnection].
extension StationConnectionPatterns on StationConnection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StationConnection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationConnection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StationConnection value)  $default,){
final _that = this;
switch (_that) {
case _StationConnection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StationConnection value)?  $default,){
final _that = this;
switch (_that) {
case _StationConnection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fromId,  int toId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StationConnection() when $default != null:
return $default(_that.fromId,_that.toId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fromId,  int toId)  $default,) {final _that = this;
switch (_that) {
case _StationConnection():
return $default(_that.fromId,_that.toId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fromId,  int toId)?  $default,) {final _that = this;
switch (_that) {
case _StationConnection() when $default != null:
return $default(_that.fromId,_that.toId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StationConnection implements StationConnection {
  const _StationConnection({required this.fromId, required this.toId});
  factory _StationConnection.fromJson(Map<String, dynamic> json) => _$StationConnectionFromJson(json);

@override final  int fromId;
@override final  int toId;

/// Create a copy of StationConnection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationConnectionCopyWith<_StationConnection> get copyWith => __$StationConnectionCopyWithImpl<_StationConnection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationConnectionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationConnection&&(identical(other.fromId, fromId) || other.fromId == fromId)&&(identical(other.toId, toId) || other.toId == toId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fromId,toId);
}

@override
String toString() {
    return 'StationConnection(fromId: $fromId, toId: $toId)';
}


}

/// @nodoc
abstract mixin class _$StationConnectionCopyWith<$Res> implements $StationConnectionCopyWith<$Res> {
  factory _$StationConnectionCopyWith(_StationConnection value, $Res Function(_StationConnection) _then) = __$StationConnectionCopyWithImpl;
@override @useResult
$Res call({
 int fromId, int toId
});




}
/// @nodoc
class __$StationConnectionCopyWithImpl<$Res>
    implements _$StationConnectionCopyWith<$Res> {
  __$StationConnectionCopyWithImpl(this._self, this._then);

  final _StationConnection _self;
  final $Res Function(_StationConnection) _then;

/// Create a copy of StationConnection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromId = null,Object? toId = null,}) {
  return _then(_StationConnection(
fromId: null == fromId ? _self.fromId : fromId // ignore: cast_nullable_to_non_nullable
as int,toId: null == toId ? _self.toId : toId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
