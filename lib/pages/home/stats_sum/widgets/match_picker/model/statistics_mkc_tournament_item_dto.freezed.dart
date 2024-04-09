// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_mkc_tournament_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsMKCTournamentItemDto _$StatisticsMKCTournamentItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCTournamentItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCTournamentItemDto {
  int get tournamentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  bool get isFinal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCTournamentItemDtoCopyWith<StatisticsMKCTournamentItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCTournamentItemDtoCopyWith<$Res> {
  factory $StatisticsMKCTournamentItemDtoCopyWith(
          StatisticsMKCTournamentItemDto value,
          $Res Function(StatisticsMKCTournamentItemDto) then) =
      _$StatisticsMKCTournamentItemDtoCopyWithImpl<$Res,
          StatisticsMKCTournamentItemDto>;
  @useResult
  $Res call({int tournamentId, String name, String groupName, bool isFinal});
}

/// @nodoc
class _$StatisticsMKCTournamentItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCTournamentItemDto>
    implements $StatisticsMKCTournamentItemDtoCopyWith<$Res> {
  _$StatisticsMKCTournamentItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
    Object? name = null,
    Object? groupName = null,
    Object? isFinal = null,
  }) {
    return _then(_value.copyWith(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isFinal: null == isFinal
          ? _value.isFinal
          : isFinal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCTournamentItemDtoImplCopyWith<$Res>
    implements $StatisticsMKCTournamentItemDtoCopyWith<$Res> {
  factory _$$StatisticsMKCTournamentItemDtoImplCopyWith(
          _$StatisticsMKCTournamentItemDtoImpl value,
          $Res Function(_$StatisticsMKCTournamentItemDtoImpl) then) =
      __$$StatisticsMKCTournamentItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tournamentId, String name, String groupName, bool isFinal});
}

/// @nodoc
class __$$StatisticsMKCTournamentItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCTournamentItemDtoCopyWithImpl<$Res,
        _$StatisticsMKCTournamentItemDtoImpl>
    implements _$$StatisticsMKCTournamentItemDtoImplCopyWith<$Res> {
  __$$StatisticsMKCTournamentItemDtoImplCopyWithImpl(
      _$StatisticsMKCTournamentItemDtoImpl _value,
      $Res Function(_$StatisticsMKCTournamentItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
    Object? name = null,
    Object? groupName = null,
    Object? isFinal = null,
  }) {
    return _then(_$StatisticsMKCTournamentItemDtoImpl(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isFinal: null == isFinal
          ? _value.isFinal
          : isFinal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCTournamentItemDtoImpl
    extends _StatisticsMKCTournamentItemDto {
  const _$StatisticsMKCTournamentItemDtoImpl(
      {required this.tournamentId,
      required this.name,
      required this.groupName,
      required this.isFinal})
      : super._();

  factory _$StatisticsMKCTournamentItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCTournamentItemDtoImplFromJson(json);

  @override
  final int tournamentId;
  @override
  final String name;
  @override
  final String groupName;
  @override
  final bool isFinal;

  @override
  String toString() {
    return 'StatisticsMKCTournamentItemDto(tournamentId: $tournamentId, name: $name, groupName: $groupName, isFinal: $isFinal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsMKCTournamentItemDtoImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.isFinal, isFinal) || other.isFinal == isFinal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tournamentId, name, groupName, isFinal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCTournamentItemDtoImplCopyWith<
          _$StatisticsMKCTournamentItemDtoImpl>
      get copyWith => __$$StatisticsMKCTournamentItemDtoImplCopyWithImpl<
          _$StatisticsMKCTournamentItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCTournamentItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCTournamentItemDto
    extends StatisticsMKCTournamentItemDto {
  const factory _StatisticsMKCTournamentItemDto(
      {required final int tournamentId,
      required final String name,
      required final String groupName,
      required final bool isFinal}) = _$StatisticsMKCTournamentItemDtoImpl;
  const _StatisticsMKCTournamentItemDto._() : super._();

  factory _StatisticsMKCTournamentItemDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsMKCTournamentItemDtoImpl.fromJson;

  @override
  int get tournamentId;
  @override
  String get name;
  @override
  String get groupName;
  @override
  bool get isFinal;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCTournamentItemDtoImplCopyWith<
          _$StatisticsMKCTournamentItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
