// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_mkc_matches_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsMKCMatchesResponseDto _$StatisticsMKCMatchesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCMatchesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCMatchesResponseDto {
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  set date(DateTime value) => throw _privateConstructorUsedError;
  String get resultIndicator => throw _privateConstructorUsedError;
  set resultIndicator(String value) => throw _privateConstructorUsedError;
  List<int> get score => throw _privateConstructorUsedError;
  set score(List<int> value) => throw _privateConstructorUsedError;
  String get homeTeamName => throw _privateConstructorUsedError;
  set homeTeamName(String value) => throw _privateConstructorUsedError;
  String get awayTeamName => throw _privateConstructorUsedError;
  set awayTeamName(String value) => throw _privateConstructorUsedError;
  String get statisticId => throw _privateConstructorUsedError;
  set statisticId(String value) => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  set isActive(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCMatchesResponseDtoCopyWith<StatisticsMKCMatchesResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCMatchesResponseDtoCopyWith<$Res> {
  factory $StatisticsMKCMatchesResponseDtoCopyWith(
          StatisticsMKCMatchesResponseDto value,
          $Res Function(StatisticsMKCMatchesResponseDto) then) =
      _$StatisticsMKCMatchesResponseDtoCopyWithImpl<$Res,
          StatisticsMKCMatchesResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String resultIndicator,
      List<int> score,
      String homeTeamName,
      String awayTeamName,
      String statisticId,
      bool isActive});
}

/// @nodoc
class _$StatisticsMKCMatchesResponseDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCMatchesResponseDto>
    implements $StatisticsMKCMatchesResponseDtoCopyWith<$Res> {
  _$StatisticsMKCMatchesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? resultIndicator = null,
    Object? score = null,
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? statisticId = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultIndicator: null == resultIndicator
          ? _value.resultIndicator
          : resultIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<int>,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      statisticId: null == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCMatchesResponseDtoImplCopyWith<$Res>
    implements $StatisticsMKCMatchesResponseDtoCopyWith<$Res> {
  factory _$$StatisticsMKCMatchesResponseDtoImplCopyWith(
          _$StatisticsMKCMatchesResponseDtoImpl value,
          $Res Function(_$StatisticsMKCMatchesResponseDtoImpl) then) =
      __$$StatisticsMKCMatchesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String resultIndicator,
      List<int> score,
      String homeTeamName,
      String awayTeamName,
      String statisticId,
      bool isActive});
}

/// @nodoc
class __$$StatisticsMKCMatchesResponseDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCMatchesResponseDtoCopyWithImpl<$Res,
        _$StatisticsMKCMatchesResponseDtoImpl>
    implements _$$StatisticsMKCMatchesResponseDtoImplCopyWith<$Res> {
  __$$StatisticsMKCMatchesResponseDtoImplCopyWithImpl(
      _$StatisticsMKCMatchesResponseDtoImpl _value,
      $Res Function(_$StatisticsMKCMatchesResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? resultIndicator = null,
    Object? score = null,
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? statisticId = null,
    Object? isActive = null,
  }) {
    return _then(_$StatisticsMKCMatchesResponseDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultIndicator: null == resultIndicator
          ? _value.resultIndicator
          : resultIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<int>,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      statisticId: null == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCMatchesResponseDtoImpl
    extends _StatisticsMKCMatchesResponseDto {
  _$StatisticsMKCMatchesResponseDtoImpl(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required this.date,
      required this.resultIndicator,
      required this.score,
      required this.homeTeamName,
      required this.awayTeamName,
      required this.statisticId,
      this.isActive = false})
      : super._();

  factory _$StatisticsMKCMatchesResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCMatchesResponseDtoImplFromJson(json);

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime date;
  @override
  String resultIndicator;
  @override
  List<int> score;
  @override
  String homeTeamName;
  @override
  String awayTeamName;
  @override
  String statisticId;
  @override
  @JsonKey()
  bool isActive;

  @override
  String toString() {
    return 'StatisticsMKCMatchesResponseDto(date: $date, resultIndicator: $resultIndicator, score: $score, homeTeamName: $homeTeamName, awayTeamName: $awayTeamName, statisticId: $statisticId, isActive: $isActive)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCMatchesResponseDtoImplCopyWith<
          _$StatisticsMKCMatchesResponseDtoImpl>
      get copyWith => __$$StatisticsMKCMatchesResponseDtoImplCopyWithImpl<
          _$StatisticsMKCMatchesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCMatchesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCMatchesResponseDto
    extends StatisticsMKCMatchesResponseDto implements GameInterface {
  factory _StatisticsMKCMatchesResponseDto(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required DateTime date,
      required String resultIndicator,
      required List<int> score,
      required String homeTeamName,
      required String awayTeamName,
      required String statisticId,
      bool isActive}) = _$StatisticsMKCMatchesResponseDtoImpl;
  _StatisticsMKCMatchesResponseDto._() : super._();

  factory _StatisticsMKCMatchesResponseDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsMKCMatchesResponseDtoImpl.fromJson;

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date;
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  set date(DateTime value);
  @override
  String get resultIndicator;
  set resultIndicator(String value);
  @override
  List<int> get score;
  set score(List<int> value);
  @override
  String get homeTeamName;
  set homeTeamName(String value);
  @override
  String get awayTeamName;
  set awayTeamName(String value);
  @override
  String get statisticId;
  set statisticId(String value);
  @override
  bool get isActive;
  set isActive(bool value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCMatchesResponseDtoImplCopyWith<
          _$StatisticsMKCMatchesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
