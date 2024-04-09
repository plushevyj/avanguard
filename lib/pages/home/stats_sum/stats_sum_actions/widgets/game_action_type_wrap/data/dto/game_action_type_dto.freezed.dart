// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_action_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameActionTypeDto _$GameActionTypeDtoFromJson(Map<String, dynamic> json) {
  return _GameActionTypeDto.fromJson(json);
}

/// @nodoc
mixin _$GameActionTypeDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get engNameShort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameActionTypeDtoCopyWith<GameActionTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameActionTypeDtoCopyWith<$Res> {
  factory $GameActionTypeDtoCopyWith(
          GameActionTypeDto value, $Res Function(GameActionTypeDto) then) =
      _$GameActionTypeDtoCopyWithImpl<$Res, GameActionTypeDto>;
  @useResult
  $Res call({int id, String name, String engNameShort});
}

/// @nodoc
class _$GameActionTypeDtoCopyWithImpl<$Res, $Val extends GameActionTypeDto>
    implements $GameActionTypeDtoCopyWith<$Res> {
  _$GameActionTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? engNameShort = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameActionTypeDtoImplCopyWith<$Res>
    implements $GameActionTypeDtoCopyWith<$Res> {
  factory _$$GameActionTypeDtoImplCopyWith(_$GameActionTypeDtoImpl value,
          $Res Function(_$GameActionTypeDtoImpl) then) =
      __$$GameActionTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String engNameShort});
}

/// @nodoc
class __$$GameActionTypeDtoImplCopyWithImpl<$Res>
    extends _$GameActionTypeDtoCopyWithImpl<$Res, _$GameActionTypeDtoImpl>
    implements _$$GameActionTypeDtoImplCopyWith<$Res> {
  __$$GameActionTypeDtoImplCopyWithImpl(_$GameActionTypeDtoImpl _value,
      $Res Function(_$GameActionTypeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? engNameShort = null,
  }) {
    return _then(_$GameActionTypeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameActionTypeDtoImpl extends _GameActionTypeDto {
  const _$GameActionTypeDtoImpl(
      {required this.id, required this.name, required this.engNameShort})
      : super._();

  factory _$GameActionTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameActionTypeDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String engNameShort;

  @override
  String toString() {
    return 'GameActionTypeDto(id: $id, name: $name, engNameShort: $engNameShort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameActionTypeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engNameShort, engNameShort) ||
                other.engNameShort == engNameShort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, engNameShort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameActionTypeDtoImplCopyWith<_$GameActionTypeDtoImpl> get copyWith =>
      __$$GameActionTypeDtoImplCopyWithImpl<_$GameActionTypeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameActionTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _GameActionTypeDto extends GameActionTypeDto {
  const factory _GameActionTypeDto(
      {required final int id,
      required final String name,
      required final String engNameShort}) = _$GameActionTypeDtoImpl;
  const _GameActionTypeDto._() : super._();

  factory _GameActionTypeDto.fromJson(Map<String, dynamic> json) =
      _$GameActionTypeDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get engNameShort;
  @override
  @JsonKey(ignore: true)
  _$$GameActionTypeDtoImplCopyWith<_$GameActionTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
