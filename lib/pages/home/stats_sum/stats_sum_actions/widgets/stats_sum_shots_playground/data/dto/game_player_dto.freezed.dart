// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamePlayerDto _$GamePlayerDtoFromJson(Map<String, dynamic> json) {
  return _GamePlayerDto.fromJson(json);
}

/// @nodoc
mixin _$GamePlayerDto {
  int get avangardId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  String get hockeyRole => throw _privateConstructorUsedError;
  int get shotsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamePlayerDtoCopyWith<GamePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerDtoCopyWith<$Res> {
  factory $GamePlayerDtoCopyWith(
          GamePlayerDto value, $Res Function(GamePlayerDto) then) =
      _$GamePlayerDtoCopyWithImpl<$Res, GamePlayerDto>;
  @useResult
  $Res call(
      {int avangardId,
      String firstName,
      String lastName,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      String hockeyRole,
      int shotsCount});
}

/// @nodoc
class _$GamePlayerDtoCopyWithImpl<$Res, $Val extends GamePlayerDto>
    implements $GamePlayerDtoCopyWith<$Res> {
  _$GamePlayerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avangardId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? hockeyRole = null,
    Object? shotsCount = null,
  }) {
    return _then(_value.copyWith(
      avangardId: null == avangardId
          ? _value.avangardId
          : avangardId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      hockeyRole: null == hockeyRole
          ? _value.hockeyRole
          : hockeyRole // ignore: cast_nullable_to_non_nullable
              as String,
      shotsCount: null == shotsCount
          ? _value.shotsCount
          : shotsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamePlayerDtoImplCopyWith<$Res>
    implements $GamePlayerDtoCopyWith<$Res> {
  factory _$$GamePlayerDtoImplCopyWith(
          _$GamePlayerDtoImpl value, $Res Function(_$GamePlayerDtoImpl) then) =
      __$$GamePlayerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int avangardId,
      String firstName,
      String lastName,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      String hockeyRole,
      int shotsCount});
}

/// @nodoc
class __$$GamePlayerDtoImplCopyWithImpl<$Res>
    extends _$GamePlayerDtoCopyWithImpl<$Res, _$GamePlayerDtoImpl>
    implements _$$GamePlayerDtoImplCopyWith<$Res> {
  __$$GamePlayerDtoImplCopyWithImpl(
      _$GamePlayerDtoImpl _value, $Res Function(_$GamePlayerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avangardId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? hockeyRole = null,
    Object? shotsCount = null,
  }) {
    return _then(_$GamePlayerDtoImpl(
      avangardId: null == avangardId
          ? _value.avangardId
          : avangardId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      hockeyRole: null == hockeyRole
          ? _value.hockeyRole
          : hockeyRole // ignore: cast_nullable_to_non_nullable
              as String,
      shotsCount: null == shotsCount
          ? _value.shotsCount
          : shotsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamePlayerDtoImpl extends _GamePlayerDto {
  const _$GamePlayerDtoImpl(
      {required this.avangardId,
      required this.firstName,
      required this.lastName,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      required this.hockeyRole,
      this.shotsCount = -1})
      : super._();

  factory _$GamePlayerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamePlayerDtoImplFromJson(json);

  @override
  final int avangardId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  final String hockeyRole;
  @override
  @JsonKey()
  final int shotsCount;

  @override
  String toString() {
    return 'GamePlayerDto(avangardId: $avangardId, firstName: $firstName, lastName: $lastName, hockeyRole: $hockeyRole, shotsCount: $shotsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayerDtoImpl &&
            (identical(other.avangardId, avangardId) ||
                other.avangardId == avangardId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.hockeyRole, hockeyRole) ||
                other.hockeyRole == hockeyRole) &&
            (identical(other.shotsCount, shotsCount) ||
                other.shotsCount == shotsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, avangardId, firstName, lastName, hockeyRole, shotsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayerDtoImplCopyWith<_$GamePlayerDtoImpl> get copyWith =>
      __$$GamePlayerDtoImplCopyWithImpl<_$GamePlayerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamePlayerDtoImplToJson(
      this,
    );
  }
}

abstract class _GamePlayerDto extends GamePlayerDto
    implements PlaygroundPlayerDtoInterface {
  const factory _GamePlayerDto(
      {required final int avangardId,
      required final String firstName,
      required final String lastName,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      required final String hockeyRole,
      final int shotsCount}) = _$GamePlayerDtoImpl;
  const _GamePlayerDto._() : super._();

  factory _GamePlayerDto.fromJson(Map<String, dynamic> json) =
      _$GamePlayerDtoImpl.fromJson;

  @override
  int get avangardId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  String get hockeyRole;
  @override
  int get shotsCount;
  @override
  @JsonKey(ignore: true)
  _$$GamePlayerDtoImplCopyWith<_$GamePlayerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
