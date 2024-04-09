// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goalkeeper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goalkeeper _$GoalkeeperFromJson(Map<String, dynamic> json) {
  return _Goalkeeper.fromJson(json);
}

/// @nodoc
mixin _$Goalkeeper {
  String? get playerName => throw _privateConstructorUsedError;
  String? get playerId => throw _privateConstructorUsedError;
  int? get actionsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalkeeperCopyWith<Goalkeeper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalkeeperCopyWith<$Res> {
  factory $GoalkeeperCopyWith(
          Goalkeeper value, $Res Function(Goalkeeper) then) =
      _$GoalkeeperCopyWithImpl<$Res, Goalkeeper>;
  @useResult
  $Res call({String? playerName, String? playerId, int? actionsCount});
}

/// @nodoc
class _$GoalkeeperCopyWithImpl<$Res, $Val extends Goalkeeper>
    implements $GoalkeeperCopyWith<$Res> {
  _$GoalkeeperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = freezed,
    Object? playerId = freezed,
    Object? actionsCount = freezed,
  }) {
    return _then(_value.copyWith(
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      actionsCount: freezed == actionsCount
          ? _value.actionsCount
          : actionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalkeeperImplCopyWith<$Res>
    implements $GoalkeeperCopyWith<$Res> {
  factory _$$GoalkeeperImplCopyWith(
          _$GoalkeeperImpl value, $Res Function(_$GoalkeeperImpl) then) =
      __$$GoalkeeperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? playerName, String? playerId, int? actionsCount});
}

/// @nodoc
class __$$GoalkeeperImplCopyWithImpl<$Res>
    extends _$GoalkeeperCopyWithImpl<$Res, _$GoalkeeperImpl>
    implements _$$GoalkeeperImplCopyWith<$Res> {
  __$$GoalkeeperImplCopyWithImpl(
      _$GoalkeeperImpl _value, $Res Function(_$GoalkeeperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = freezed,
    Object? playerId = freezed,
    Object? actionsCount = freezed,
  }) {
    return _then(_$GoalkeeperImpl(
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      actionsCount: freezed == actionsCount
          ? _value.actionsCount
          : actionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalkeeperImpl with DiagnosticableTreeMixin implements _Goalkeeper {
  const _$GoalkeeperImpl(
      {required this.playerName,
      required this.playerId,
      required this.actionsCount});

  factory _$GoalkeeperImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalkeeperImplFromJson(json);

  @override
  final String? playerName;
  @override
  final String? playerId;
  @override
  final int? actionsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Goalkeeper(playerName: $playerName, playerId: $playerId, actionsCount: $actionsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Goalkeeper'))
      ..add(DiagnosticsProperty('playerName', playerName))
      ..add(DiagnosticsProperty('playerId', playerId))
      ..add(DiagnosticsProperty('actionsCount', actionsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalkeeperImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.actionsCount, actionsCount) ||
                other.actionsCount == actionsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playerName, playerId, actionsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalkeeperImplCopyWith<_$GoalkeeperImpl> get copyWith =>
      __$$GoalkeeperImplCopyWithImpl<_$GoalkeeperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalkeeperImplToJson(
      this,
    );
  }
}

abstract class _Goalkeeper implements Goalkeeper {
  const factory _Goalkeeper(
      {required final String? playerName,
      required final String? playerId,
      required final int? actionsCount}) = _$GoalkeeperImpl;

  factory _Goalkeeper.fromJson(Map<String, dynamic> json) =
      _$GoalkeeperImpl.fromJson;

  @override
  String? get playerName;
  @override
  String? get playerId;
  @override
  int? get actionsCount;
  @override
  @JsonKey(ignore: true)
  _$$GoalkeeperImplCopyWith<_$GoalkeeperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
