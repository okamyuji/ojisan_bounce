// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ojisan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Ojisan _$OjisanFromJson(Map<String, dynamic> json) {
  return _Ojisan.fromJson(json);
}

/// @nodoc
mixin _$Ojisan {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get evilness => throw _privateConstructorUsedError; // 悪辣度（1-5）
  String get emoji => throw _privateConstructorUsedError;
  int get basePoints => throw _privateConstructorUsedError;

  /// Serializes this Ojisan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ojisan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OjisanCopyWith<Ojisan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OjisanCopyWith<$Res> {
  factory $OjisanCopyWith(Ojisan value, $Res Function(Ojisan) then) =
      _$OjisanCopyWithImpl<$Res, Ojisan>;
  @useResult
  $Res call({
    String id,
    String name,
    int evilness,
    String emoji,
    int basePoints,
  });
}

/// @nodoc
class _$OjisanCopyWithImpl<$Res, $Val extends Ojisan>
    implements $OjisanCopyWith<$Res> {
  _$OjisanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ojisan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? evilness = null,
    Object? emoji = null,
    Object? basePoints = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            evilness: null == evilness
                ? _value.evilness
                : evilness // ignore: cast_nullable_to_non_nullable
                      as int,
            emoji: null == emoji
                ? _value.emoji
                : emoji // ignore: cast_nullable_to_non_nullable
                      as String,
            basePoints: null == basePoints
                ? _value.basePoints
                : basePoints // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OjisanImplCopyWith<$Res> implements $OjisanCopyWith<$Res> {
  factory _$$OjisanImplCopyWith(
    _$OjisanImpl value,
    $Res Function(_$OjisanImpl) then,
  ) = __$$OjisanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int evilness,
    String emoji,
    int basePoints,
  });
}

/// @nodoc
class __$$OjisanImplCopyWithImpl<$Res>
    extends _$OjisanCopyWithImpl<$Res, _$OjisanImpl>
    implements _$$OjisanImplCopyWith<$Res> {
  __$$OjisanImplCopyWithImpl(
    _$OjisanImpl _value,
    $Res Function(_$OjisanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Ojisan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? evilness = null,
    Object? emoji = null,
    Object? basePoints = null,
  }) {
    return _then(
      _$OjisanImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        evilness: null == evilness
            ? _value.evilness
            : evilness // ignore: cast_nullable_to_non_nullable
                  as int,
        emoji: null == emoji
            ? _value.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
        basePoints: null == basePoints
            ? _value.basePoints
            : basePoints // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OjisanImpl implements _Ojisan {
  const _$OjisanImpl({
    required this.id,
    required this.name,
    required this.evilness,
    required this.emoji,
    required this.basePoints,
  });

  factory _$OjisanImpl.fromJson(Map<String, dynamic> json) =>
      _$$OjisanImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int evilness;
  // 悪辣度（1-5）
  @override
  final String emoji;
  @override
  final int basePoints;

  @override
  String toString() {
    return 'Ojisan(id: $id, name: $name, evilness: $evilness, emoji: $emoji, basePoints: $basePoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OjisanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.evilness, evilness) ||
                other.evilness == evilness) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.basePoints, basePoints) ||
                other.basePoints == basePoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, evilness, emoji, basePoints);

  /// Create a copy of Ojisan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OjisanImplCopyWith<_$OjisanImpl> get copyWith =>
      __$$OjisanImplCopyWithImpl<_$OjisanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OjisanImplToJson(this);
  }
}

abstract class _Ojisan implements Ojisan {
  const factory _Ojisan({
    required final String id,
    required final String name,
    required final int evilness,
    required final String emoji,
    required final int basePoints,
  }) = _$OjisanImpl;

  factory _Ojisan.fromJson(Map<String, dynamic> json) = _$OjisanImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get evilness; // 悪辣度（1-5）
  @override
  String get emoji;
  @override
  int get basePoints;

  /// Create a copy of Ojisan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OjisanImplCopyWith<_$OjisanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OjisanEncounter _$OjisanEncounterFromJson(Map<String, dynamic> json) {
  return _OjisanEncounter.fromJson(json);
}

/// @nodoc
mixin _$OjisanEncounter {
  Ojisan get ojisan => throw _privateConstructorUsedError;
  DateTime get encounterTime => throw _privateConstructorUsedError;
  DateTime? get actionStartTime => throw _privateConstructorUsedError;
  DateTime? get tapTime => throw _privateConstructorUsedError;
  double? get elapsedSeconds => throw _privateConstructorUsedError;
  TimingResult? get result => throw _privateConstructorUsedError;
  int? get pointsEarned => throw _privateConstructorUsedError;

  /// Serializes this OjisanEncounter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OjisanEncounterCopyWith<OjisanEncounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OjisanEncounterCopyWith<$Res> {
  factory $OjisanEncounterCopyWith(
    OjisanEncounter value,
    $Res Function(OjisanEncounter) then,
  ) = _$OjisanEncounterCopyWithImpl<$Res, OjisanEncounter>;
  @useResult
  $Res call({
    Ojisan ojisan,
    DateTime encounterTime,
    DateTime? actionStartTime,
    DateTime? tapTime,
    double? elapsedSeconds,
    TimingResult? result,
    int? pointsEarned,
  });

  $OjisanCopyWith<$Res> get ojisan;
}

/// @nodoc
class _$OjisanEncounterCopyWithImpl<$Res, $Val extends OjisanEncounter>
    implements $OjisanEncounterCopyWith<$Res> {
  _$OjisanEncounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ojisan = null,
    Object? encounterTime = null,
    Object? actionStartTime = freezed,
    Object? tapTime = freezed,
    Object? elapsedSeconds = freezed,
    Object? result = freezed,
    Object? pointsEarned = freezed,
  }) {
    return _then(
      _value.copyWith(
            ojisan: null == ojisan
                ? _value.ojisan
                : ojisan // ignore: cast_nullable_to_non_nullable
                      as Ojisan,
            encounterTime: null == encounterTime
                ? _value.encounterTime
                : encounterTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            actionStartTime: freezed == actionStartTime
                ? _value.actionStartTime
                : actionStartTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            tapTime: freezed == tapTime
                ? _value.tapTime
                : tapTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            elapsedSeconds: freezed == elapsedSeconds
                ? _value.elapsedSeconds
                : elapsedSeconds // ignore: cast_nullable_to_non_nullable
                      as double?,
            result: freezed == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as TimingResult?,
            pointsEarned: freezed == pointsEarned
                ? _value.pointsEarned
                : pointsEarned // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OjisanCopyWith<$Res> get ojisan {
    return $OjisanCopyWith<$Res>(_value.ojisan, (value) {
      return _then(_value.copyWith(ojisan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OjisanEncounterImplCopyWith<$Res>
    implements $OjisanEncounterCopyWith<$Res> {
  factory _$$OjisanEncounterImplCopyWith(
    _$OjisanEncounterImpl value,
    $Res Function(_$OjisanEncounterImpl) then,
  ) = __$$OjisanEncounterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Ojisan ojisan,
    DateTime encounterTime,
    DateTime? actionStartTime,
    DateTime? tapTime,
    double? elapsedSeconds,
    TimingResult? result,
    int? pointsEarned,
  });

  @override
  $OjisanCopyWith<$Res> get ojisan;
}

/// @nodoc
class __$$OjisanEncounterImplCopyWithImpl<$Res>
    extends _$OjisanEncounterCopyWithImpl<$Res, _$OjisanEncounterImpl>
    implements _$$OjisanEncounterImplCopyWith<$Res> {
  __$$OjisanEncounterImplCopyWithImpl(
    _$OjisanEncounterImpl _value,
    $Res Function(_$OjisanEncounterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ojisan = null,
    Object? encounterTime = null,
    Object? actionStartTime = freezed,
    Object? tapTime = freezed,
    Object? elapsedSeconds = freezed,
    Object? result = freezed,
    Object? pointsEarned = freezed,
  }) {
    return _then(
      _$OjisanEncounterImpl(
        ojisan: null == ojisan
            ? _value.ojisan
            : ojisan // ignore: cast_nullable_to_non_nullable
                  as Ojisan,
        encounterTime: null == encounterTime
            ? _value.encounterTime
            : encounterTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        actionStartTime: freezed == actionStartTime
            ? _value.actionStartTime
            : actionStartTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        tapTime: freezed == tapTime
            ? _value.tapTime
            : tapTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        elapsedSeconds: freezed == elapsedSeconds
            ? _value.elapsedSeconds
            : elapsedSeconds // ignore: cast_nullable_to_non_nullable
                  as double?,
        result: freezed == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as TimingResult?,
        pointsEarned: freezed == pointsEarned
            ? _value.pointsEarned
            : pointsEarned // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OjisanEncounterImpl implements _OjisanEncounter {
  const _$OjisanEncounterImpl({
    required this.ojisan,
    required this.encounterTime,
    this.actionStartTime,
    this.tapTime,
    this.elapsedSeconds,
    this.result,
    this.pointsEarned,
  });

  factory _$OjisanEncounterImpl.fromJson(Map<String, dynamic> json) =>
      _$$OjisanEncounterImplFromJson(json);

  @override
  final Ojisan ojisan;
  @override
  final DateTime encounterTime;
  @override
  final DateTime? actionStartTime;
  @override
  final DateTime? tapTime;
  @override
  final double? elapsedSeconds;
  @override
  final TimingResult? result;
  @override
  final int? pointsEarned;

  @override
  String toString() {
    return 'OjisanEncounter(ojisan: $ojisan, encounterTime: $encounterTime, actionStartTime: $actionStartTime, tapTime: $tapTime, elapsedSeconds: $elapsedSeconds, result: $result, pointsEarned: $pointsEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OjisanEncounterImpl &&
            (identical(other.ojisan, ojisan) || other.ojisan == ojisan) &&
            (identical(other.encounterTime, encounterTime) ||
                other.encounterTime == encounterTime) &&
            (identical(other.actionStartTime, actionStartTime) ||
                other.actionStartTime == actionStartTime) &&
            (identical(other.tapTime, tapTime) || other.tapTime == tapTime) &&
            (identical(other.elapsedSeconds, elapsedSeconds) ||
                other.elapsedSeconds == elapsedSeconds) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ojisan,
    encounterTime,
    actionStartTime,
    tapTime,
    elapsedSeconds,
    result,
    pointsEarned,
  );

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OjisanEncounterImplCopyWith<_$OjisanEncounterImpl> get copyWith =>
      __$$OjisanEncounterImplCopyWithImpl<_$OjisanEncounterImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OjisanEncounterImplToJson(this);
  }
}

abstract class _OjisanEncounter implements OjisanEncounter {
  const factory _OjisanEncounter({
    required final Ojisan ojisan,
    required final DateTime encounterTime,
    final DateTime? actionStartTime,
    final DateTime? tapTime,
    final double? elapsedSeconds,
    final TimingResult? result,
    final int? pointsEarned,
  }) = _$OjisanEncounterImpl;

  factory _OjisanEncounter.fromJson(Map<String, dynamic> json) =
      _$OjisanEncounterImpl.fromJson;

  @override
  Ojisan get ojisan;
  @override
  DateTime get encounterTime;
  @override
  DateTime? get actionStartTime;
  @override
  DateTime? get tapTime;
  @override
  double? get elapsedSeconds;
  @override
  TimingResult? get result;
  @override
  int? get pointsEarned;

  /// Create a copy of OjisanEncounter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OjisanEncounterImplCopyWith<_$OjisanEncounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
