// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_get_ep_enemy_list_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsGetEPEnemyListItemDto _$StatisticsGetEPEnemyListItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsGetEPEnemyListItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsGetEPEnemyListItemDto {
  int get teamId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get nextGameDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsGetEPEnemyListItemDtoCopyWith<StatisticsGetEPEnemyListItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsGetEPEnemyListItemDtoCopyWith<$Res> {
  factory $StatisticsGetEPEnemyListItemDtoCopyWith(
          StatisticsGetEPEnemyListItemDto value,
          $Res Function(StatisticsGetEPEnemyListItemDto) then) =
      _$StatisticsGetEPEnemyListItemDtoCopyWithImpl<$Res,
          StatisticsGetEPEnemyListItemDto>;
  @useResult
  $Res call({int teamId, String name, int age, String nextGameDate});
}

/// @nodoc
class _$StatisticsGetEPEnemyListItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsGetEPEnemyListItemDto>
    implements $StatisticsGetEPEnemyListItemDtoCopyWith<$Res> {
  _$StatisticsGetEPEnemyListItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? name = null,
    Object? age = null,
    Object? nextGameDate = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      nextGameDate: null == nextGameDate
          ? _value.nextGameDate
          : nextGameDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsGetEPEnemyListItemDtoImplCopyWith<$Res>
    implements $StatisticsGetEPEnemyListItemDtoCopyWith<$Res> {
  factory _$$StatisticsGetEPEnemyListItemDtoImplCopyWith(
          _$StatisticsGetEPEnemyListItemDtoImpl value,
          $Res Function(_$StatisticsGetEPEnemyListItemDtoImpl) then) =
      __$$StatisticsGetEPEnemyListItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int teamId, String name, int age, String nextGameDate});
}

/// @nodoc
class __$$StatisticsGetEPEnemyListItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsGetEPEnemyListItemDtoCopyWithImpl<$Res,
        _$StatisticsGetEPEnemyListItemDtoImpl>
    implements _$$StatisticsGetEPEnemyListItemDtoImplCopyWith<$Res> {
  __$$StatisticsGetEPEnemyListItemDtoImplCopyWithImpl(
      _$StatisticsGetEPEnemyListItemDtoImpl _value,
      $Res Function(_$StatisticsGetEPEnemyListItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? name = null,
    Object? age = null,
    Object? nextGameDate = null,
  }) {
    return _then(_$StatisticsGetEPEnemyListItemDtoImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      nextGameDate: null == nextGameDate
          ? _value.nextGameDate
          : nextGameDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsGetEPEnemyListItemDtoImpl
    extends _StatisticsGetEPEnemyListItemDto {
  const _$StatisticsGetEPEnemyListItemDtoImpl(
      {required this.teamId,
      required this.name,
      required this.age,
      required this.nextGameDate})
      : super._();

  factory _$StatisticsGetEPEnemyListItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsGetEPEnemyListItemDtoImplFromJson(json);

  @override
  final int teamId;
  @override
  final String name;
  @override
  final int age;
  @override
  final String nextGameDate;

  @override
  String toString() {
    return 'StatisticsGetEPEnemyListItemDto(teamId: $teamId, name: $name, age: $age, nextGameDate: $nextGameDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsGetEPEnemyListItemDtoImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.nextGameDate, nextGameDate) ||
                other.nextGameDate == nextGameDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamId, name, age, nextGameDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsGetEPEnemyListItemDtoImplCopyWith<
          _$StatisticsGetEPEnemyListItemDtoImpl>
      get copyWith => __$$StatisticsGetEPEnemyListItemDtoImplCopyWithImpl<
          _$StatisticsGetEPEnemyListItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsGetEPEnemyListItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsGetEPEnemyListItemDto
    extends StatisticsGetEPEnemyListItemDto {
  const factory _StatisticsGetEPEnemyListItemDto(
          {required final int teamId,
          required final String name,
          required final int age,
          required final String nextGameDate}) =
      _$StatisticsGetEPEnemyListItemDtoImpl;
  const _StatisticsGetEPEnemyListItemDto._() : super._();

  factory _StatisticsGetEPEnemyListItemDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsGetEPEnemyListItemDtoImpl.fromJson;

  @override
  int get teamId;
  @override
  String get name;
  @override
  int get age;
  @override
  String get nextGameDate;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsGetEPEnemyListItemDtoImplCopyWith<
          _$StatisticsGetEPEnemyListItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
