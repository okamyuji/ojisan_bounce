// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  int get currentStationId => throw _privateConstructorUsedError; // 現在の駅ID
  int get justicePoints => throw _privateConstructorUsedError; // 正義ポイント
  int get ojisanDefeated => throw _privateConstructorUsedError; // 撃退したおじさん数
  List<int> get visitedStations =>
      throw _privateConstructorUsedError; // 訪問済み駅IDリスト
  int get turnCount => throw _privateConstructorUsedError;

  /// Serializes this Player to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({
    int currentStationId,
    int justicePoints,
    int ojisanDefeated,
    List<int> visitedStations,
    int turnCount,
  });
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStationId = null,
    Object? justicePoints = null,
    Object? ojisanDefeated = null,
    Object? visitedStations = null,
    Object? turnCount = null,
  }) {
    return _then(
      _value.copyWith(
            currentStationId: null == currentStationId
                ? _value.currentStationId
                : currentStationId // ignore: cast_nullable_to_non_nullable
                      as int,
            justicePoints: null == justicePoints
                ? _value.justicePoints
                : justicePoints // ignore: cast_nullable_to_non_nullable
                      as int,
            ojisanDefeated: null == ojisanDefeated
                ? _value.ojisanDefeated
                : ojisanDefeated // ignore: cast_nullable_to_non_nullable
                      as int,
            visitedStations: null == visitedStations
                ? _value.visitedStations
                : visitedStations // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            turnCount: null == turnCount
                ? _value.turnCount
                : turnCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
    _$PlayerImpl value,
    $Res Function(_$PlayerImpl) then,
  ) = __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentStationId,
    int justicePoints,
    int ojisanDefeated,
    List<int> visitedStations,
    int turnCount,
  });
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
    _$PlayerImpl _value,
    $Res Function(_$PlayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStationId = null,
    Object? justicePoints = null,
    Object? ojisanDefeated = null,
    Object? visitedStations = null,
    Object? turnCount = null,
  }) {
    return _then(
      _$PlayerImpl(
        currentStationId: null == currentStationId
            ? _value.currentStationId
            : currentStationId // ignore: cast_nullable_to_non_nullable
                  as int,
        justicePoints: null == justicePoints
            ? _value.justicePoints
            : justicePoints // ignore: cast_nullable_to_non_nullable
                  as int,
        ojisanDefeated: null == ojisanDefeated
            ? _value.ojisanDefeated
            : ojisanDefeated // ignore: cast_nullable_to_non_nullable
                  as int,
        visitedStations: null == visitedStations
            ? _value._visitedStations
            : visitedStations // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        turnCount: null == turnCount
            ? _value.turnCount
            : turnCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl({
    this.currentStationId = 0,
    this.justicePoints = 0,
    this.ojisanDefeated = 0,
    final List<int> visitedStations = const [0],
    this.turnCount = 0,
  }) : _visitedStations = visitedStations;

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  @JsonKey()
  final int currentStationId;
  // 現在の駅ID
  @override
  @JsonKey()
  final int justicePoints;
  // 正義ポイント
  @override
  @JsonKey()
  final int ojisanDefeated;
  // 撃退したおじさん数
  final List<int> _visitedStations;
  // 撃退したおじさん数
  @override
  @JsonKey()
  List<int> get visitedStations {
    if (_visitedStations is EqualUnmodifiableListView) return _visitedStations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visitedStations);
  }

  // 訪問済み駅IDリスト
  @override
  @JsonKey()
  final int turnCount;

  @override
  String toString() {
    return 'Player(currentStationId: $currentStationId, justicePoints: $justicePoints, ojisanDefeated: $ojisanDefeated, visitedStations: $visitedStations, turnCount: $turnCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.currentStationId, currentStationId) ||
                other.currentStationId == currentStationId) &&
            (identical(other.justicePoints, justicePoints) ||
                other.justicePoints == justicePoints) &&
            (identical(other.ojisanDefeated, ojisanDefeated) ||
                other.ojisanDefeated == ojisanDefeated) &&
            const DeepCollectionEquality().equals(
              other._visitedStations,
              _visitedStations,
            ) &&
            (identical(other.turnCount, turnCount) ||
                other.turnCount == turnCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentStationId,
    justicePoints,
    ojisanDefeated,
    const DeepCollectionEquality().hash(_visitedStations),
    turnCount,
  );

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(this);
  }
}

abstract class _Player implements Player {
  const factory _Player({
    final int currentStationId,
    final int justicePoints,
    final int ojisanDefeated,
    final List<int> visitedStations,
    final int turnCount,
  }) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  int get currentStationId; // 現在の駅ID
  @override
  int get justicePoints; // 正義ポイント
  @override
  int get ojisanDefeated; // 撃退したおじさん数
  @override
  List<int> get visitedStations; // 訪問済み駅IDリスト
  @override
  int get turnCount;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
