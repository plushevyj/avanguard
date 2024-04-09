// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_faceoff_zone_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsFaceoffZoneItemDto _$StatisticsFaceoffZoneItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsFaceoffZoneItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsFaceoffZoneItemDto {
  String? get name => throw _privateConstructorUsedError;
  num? get home => throw _privateConstructorUsedError;
  num? get away => throw _privateConstructorUsedError;
  num? get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsFaceoffZoneItemDtoCopyWith<StatisticsFaceoffZoneItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsFaceoffZoneItemDtoCopyWith<$Res> {
  factory $StatisticsFaceoffZoneItemDtoCopyWith(
          StatisticsFaceoffZoneItemDto value,
          $Res Function(StatisticsFaceoffZoneItemDto) then) =
      _$StatisticsFaceoffZoneItemDtoCopyWithImpl<$Res,
          StatisticsFaceoffZoneItemDto>;
  @useResult
  $Res call({String? name, num? home, num? away, num? percent});
}

/// @nodoc
class _$StatisticsFaceoffZoneItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsFaceoffZoneItemDto>
    implements $StatisticsFaceoffZoneItemDtoCopyWith<$Res> {
  _$StatisticsFaceoffZoneItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? percent = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as num?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as num?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsFaceoffZoneItemDtoImplCopyWith<$Res>
    implements $StatisticsFaceoffZoneItemDtoCopyWith<$Res> {
  factory _$$StatisticsFaceoffZoneItemDtoImplCopyWith(
          _$StatisticsFaceoffZoneItemDtoImpl value,
          $Res Function(_$StatisticsFaceoffZoneItemDtoImpl) then) =
      __$$StatisticsFaceoffZoneItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, num? home, num? away, num? percent});
}

/// @nodoc
class __$$StatisticsFaceoffZoneItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsFaceoffZoneItemDtoCopyWithImpl<$Res,
        _$StatisticsFaceoffZoneItemDtoImpl>
    implements _$$StatisticsFaceoffZoneItemDtoImplCopyWith<$Res> {
  __$$StatisticsFaceoffZoneItemDtoImplCopyWithImpl(
      _$StatisticsFaceoffZoneItemDtoImpl _value,
      $Res Function(_$StatisticsFaceoffZoneItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? percent = freezed,
  }) {
    return _then(_$StatisticsFaceoffZoneItemDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as num?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as num?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsFaceoffZoneItemDtoImpl extends _StatisticsFaceoffZoneItemDto {
  const _$StatisticsFaceoffZoneItemDtoImpl(
      {required this.name,
      required this.home,
      required this.away,
      required this.percent})
      : super._();

  factory _$StatisticsFaceoffZoneItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsFaceoffZoneItemDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final num? home;
  @override
  final num? away;
  @override
  final num? percent;

  @override
  String toString() {
    return 'StatisticsFaceoffZoneItemDto(name: $name, home: $home, away: $away, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsFaceoffZoneItemDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, home, away, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsFaceoffZoneItemDtoImplCopyWith<
          _$StatisticsFaceoffZoneItemDtoImpl>
      get copyWith => __$$StatisticsFaceoffZoneItemDtoImplCopyWithImpl<
          _$StatisticsFaceoffZoneItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsFaceoffZoneItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsFaceoffZoneItemDto
    extends StatisticsFaceoffZoneItemDto {
  const factory _StatisticsFaceoffZoneItemDto(
      {required final String? name,
      required final num? home,
      required final num? away,
      required final num? percent}) = _$StatisticsFaceoffZoneItemDtoImpl;
  const _StatisticsFaceoffZoneItemDto._() : super._();

  factory _StatisticsFaceoffZoneItemDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsFaceoffZoneItemDtoImpl.fromJson;

  @override
  String? get name;
  @override
  num? get home;
  @override
  num? get away;
  @override
  num? get percent;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsFaceoffZoneItemDtoImplCopyWith<
          _$StatisticsFaceoffZoneItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
