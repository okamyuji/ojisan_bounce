// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError; // 画面上のX座標（0.0-1.0）
  double get y => throw _privateConstructorUsedError; // 画面上のY座標（0.0-1.0）
  String get emoji => throw _privateConstructorUsedError;
  bool get visited => throw _privateConstructorUsedError;

  /// Serializes this Station to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call({
    int id,
    String name,
    double x,
    double y,
    String emoji,
    bool visited,
  });
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? x = null,
    Object? y = null,
    Object? emoji = null,
    Object? visited = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            x: null == x
                ? _value.x
                : x // ignore: cast_nullable_to_non_nullable
                      as double,
            y: null == y
                ? _value.y
                : y // ignore: cast_nullable_to_non_nullable
                      as double,
            emoji: null == emoji
                ? _value.emoji
                : emoji // ignore: cast_nullable_to_non_nullable
                      as String,
            visited: null == visited
                ? _value.visited
                : visited // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
    _$StationImpl value,
    $Res Function(_$StationImpl) then,
  ) = __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    double x,
    double y,
    String emoji,
    bool visited,
  });
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
    _$StationImpl _value,
    $Res Function(_$StationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? x = null,
    Object? y = null,
    Object? emoji = null,
    Object? visited = null,
  }) {
    return _then(
      _$StationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        x: null == x
            ? _value.x
            : x // ignore: cast_nullable_to_non_nullable
                  as double,
        y: null == y
            ? _value.y
            : y // ignore: cast_nullable_to_non_nullable
                  as double,
        emoji: null == emoji
            ? _value.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
        visited: null == visited
            ? _value.visited
            : visited // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl({
    required this.id,
    required this.name,
    required this.x,
    required this.y,
    required this.emoji,
    this.visited = false,
  });

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double x;
  // 画面上のX座標（0.0-1.0）
  @override
  final double y;
  // 画面上のY座標（0.0-1.0）
  @override
  final String emoji;
  @override
  @JsonKey()
  final bool visited;

  @override
  String toString() {
    return 'Station(id: $id, name: $name, x: $x, y: $y, emoji: $emoji, visited: $visited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.visited, visited) || other.visited == visited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, x, y, emoji, visited);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(this);
  }
}

abstract class _Station implements Station {
  const factory _Station({
    required final int id,
    required final String name,
    required final double x,
    required final double y,
    required final String emoji,
    final bool visited,
  }) = _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get x; // 画面上のX座標（0.0-1.0）
  @override
  double get y; // 画面上のY座標（0.0-1.0）
  @override
  String get emoji;
  @override
  bool get visited;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StationConnection _$StationConnectionFromJson(Map<String, dynamic> json) {
  return _StationConnection.fromJson(json);
}

/// @nodoc
mixin _$StationConnection {
  int get fromId => throw _privateConstructorUsedError;
  int get toId => throw _privateConstructorUsedError;

  /// Serializes this StationConnection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationConnectionCopyWith<StationConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationConnectionCopyWith<$Res> {
  factory $StationConnectionCopyWith(
    StationConnection value,
    $Res Function(StationConnection) then,
  ) = _$StationConnectionCopyWithImpl<$Res, StationConnection>;
  @useResult
  $Res call({int fromId, int toId});
}

/// @nodoc
class _$StationConnectionCopyWithImpl<$Res, $Val extends StationConnection>
    implements $StationConnectionCopyWith<$Res> {
  _$StationConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromId = null, Object? toId = null}) {
    return _then(
      _value.copyWith(
            fromId: null == fromId
                ? _value.fromId
                : fromId // ignore: cast_nullable_to_non_nullable
                      as int,
            toId: null == toId
                ? _value.toId
                : toId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StationConnectionImplCopyWith<$Res>
    implements $StationConnectionCopyWith<$Res> {
  factory _$$StationConnectionImplCopyWith(
    _$StationConnectionImpl value,
    $Res Function(_$StationConnectionImpl) then,
  ) = __$$StationConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromId, int toId});
}

/// @nodoc
class __$$StationConnectionImplCopyWithImpl<$Res>
    extends _$StationConnectionCopyWithImpl<$Res, _$StationConnectionImpl>
    implements _$$StationConnectionImplCopyWith<$Res> {
  __$$StationConnectionImplCopyWithImpl(
    _$StationConnectionImpl _value,
    $Res Function(_$StationConnectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StationConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromId = null, Object? toId = null}) {
    return _then(
      _$StationConnectionImpl(
        fromId: null == fromId
            ? _value.fromId
            : fromId // ignore: cast_nullable_to_non_nullable
                  as int,
        toId: null == toId
            ? _value.toId
            : toId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationConnectionImpl implements _StationConnection {
  const _$StationConnectionImpl({required this.fromId, required this.toId});

  factory _$StationConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationConnectionImplFromJson(json);

  @override
  final int fromId;
  @override
  final int toId;

  @override
  String toString() {
    return 'StationConnection(fromId: $fromId, toId: $toId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationConnectionImpl &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromId, toId);

  /// Create a copy of StationConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationConnectionImplCopyWith<_$StationConnectionImpl> get copyWith =>
      __$$StationConnectionImplCopyWithImpl<_$StationConnectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StationConnectionImplToJson(this);
  }
}

abstract class _StationConnection implements StationConnection {
  const factory _StationConnection({
    required final int fromId,
    required final int toId,
  }) = _$StationConnectionImpl;

  factory _StationConnection.fromJson(Map<String, dynamic> json) =
      _$StationConnectionImpl.fromJson;

  @override
  int get fromId;
  @override
  int get toId;

  /// Create a copy of StationConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationConnectionImplCopyWith<_$StationConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
