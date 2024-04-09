// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_matches_info_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMatchesInfoResponseDto _$GetMatchesInfoResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetMatchesInfoResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetMatchesInfoResponseDto {
  @JsonKey(name: 'halfsScores')
  List<String> get periodScores => throw _privateConstructorUsedError;
  List<String> get teamNames => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;
  List<PrimaryMetric> get metrics => throw _privateConstructorUsedError;
  bool get winByOT => throw _privateConstructorUsedError;
  String get homeTeamLogo => throw _privateConstructorUsedError;
  String get awayTeamLogo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMatchesInfoResponseDtoCopyWith<GetMatchesInfoResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMatchesInfoResponseDtoCopyWith<$Res> {
  factory $GetMatchesInfoResponseDtoCopyWith(GetMatchesInfoResponseDto value,
          $Res Function(GetMatchesInfoResponseDto) then) =
      _$GetMatchesInfoResponseDtoCopyWithImpl<$Res, GetMatchesInfoResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'halfsScores') List<String> periodScores,
      List<String> teamNames,
      Score score,
      List<PrimaryMetric> metrics,
      bool winByOT,
      String homeTeamLogo,
      String awayTeamLogo});
}

/// @nodoc
class _$GetMatchesInfoResponseDtoCopyWithImpl<$Res,
        $Val extends GetMatchesInfoResponseDto>
    implements $GetMatchesInfoResponseDtoCopyWith<$Res> {
  _$GetMatchesInfoResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodScores = null,
    Object? teamNames = null,
    Object? score = null,
    Object? metrics = null,
    Object? winByOT = null,
    Object? homeTeamLogo = null,
    Object? awayTeamLogo = null,
  }) {
    return _then(_value.copyWith(
      periodScores: null == periodScores
          ? _value.periodScores
          : periodScores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teamNames: null == teamNames
          ? _value.teamNames
          : teamNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as List<PrimaryMetric>,
      winByOT: null == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMatchesInfoResponseDtoImplCopyWith<$Res>
    implements $GetMatchesInfoResponseDtoCopyWith<$Res> {
  factory _$$GetMatchesInfoResponseDtoImplCopyWith(
          _$GetMatchesInfoResponseDtoImpl value,
          $Res Function(_$GetMatchesInfoResponseDtoImpl) then) =
      __$$GetMatchesInfoResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'halfsScores') List<String> periodScores,
      List<String> teamNames,
      Score score,
      List<PrimaryMetric> metrics,
      bool winByOT,
      String homeTeamLogo,
      String awayTeamLogo});
}

/// @nodoc
class __$$GetMatchesInfoResponseDtoImplCopyWithImpl<$Res>
    extends _$GetMatchesInfoResponseDtoCopyWithImpl<$Res,
        _$GetMatchesInfoResponseDtoImpl>
    implements _$$GetMatchesInfoResponseDtoImplCopyWith<$Res> {
  __$$GetMatchesInfoResponseDtoImplCopyWithImpl(
      _$GetMatchesInfoResponseDtoImpl _value,
      $Res Function(_$GetMatchesInfoResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodScores = null,
    Object? teamNames = null,
    Object? score = null,
    Object? metrics = null,
    Object? winByOT = null,
    Object? homeTeamLogo = null,
    Object? awayTeamLogo = null,
  }) {
    return _then(_$GetMatchesInfoResponseDtoImpl(
      periodScores: null == periodScores
          ? _value._periodScores
          : periodScores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teamNames: null == teamNames
          ? _value._teamNames
          : teamNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
      metrics: null == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as List<PrimaryMetric>,
      winByOT: null == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMatchesInfoResponseDtoImpl extends _GetMatchesInfoResponseDto {
  const _$GetMatchesInfoResponseDtoImpl(
      {@JsonKey(name: 'halfsScores') required final List<String> periodScores,
      required final List<String> teamNames,
      required this.score,
      required final List<PrimaryMetric> metrics,
      required this.winByOT,
      required this.homeTeamLogo,
      required this.awayTeamLogo})
      : _periodScores = periodScores,
        _teamNames = teamNames,
        _metrics = metrics,
        super._();

  factory _$GetMatchesInfoResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMatchesInfoResponseDtoImplFromJson(json);

  final List<String> _periodScores;
  @override
  @JsonKey(name: 'halfsScores')
  List<String> get periodScores {
    if (_periodScores is EqualUnmodifiableListView) return _periodScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periodScores);
  }

  final List<String> _teamNames;
  @override
  List<String> get teamNames {
    if (_teamNames is EqualUnmodifiableListView) return _teamNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamNames);
  }

  @override
  final Score score;
  final List<PrimaryMetric> _metrics;
  @override
  List<PrimaryMetric> get metrics {
    if (_metrics is EqualUnmodifiableListView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metrics);
  }

  @override
  final bool winByOT;
  @override
  final String homeTeamLogo;
  @override
  final String awayTeamLogo;

  @override
  String toString() {
    return 'GetMatchesInfoResponseDto(periodScores: $periodScores, teamNames: $teamNames, score: $score, metrics: $metrics, winByOT: $winByOT, homeTeamLogo: $homeTeamLogo, awayTeamLogo: $awayTeamLogo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMatchesInfoResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._periodScores, _periodScores) &&
            const DeepCollectionEquality()
                .equals(other._teamNames, _teamNames) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            (identical(other.winByOT, winByOT) || other.winByOT == winByOT) &&
            (identical(other.homeTeamLogo, homeTeamLogo) ||
                other.homeTeamLogo == homeTeamLogo) &&
            (identical(other.awayTeamLogo, awayTeamLogo) ||
                other.awayTeamLogo == awayTeamLogo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_periodScores),
      const DeepCollectionEquality().hash(_teamNames),
      score,
      const DeepCollectionEquality().hash(_metrics),
      winByOT,
      homeTeamLogo,
      awayTeamLogo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMatchesInfoResponseDtoImplCopyWith<_$GetMatchesInfoResponseDtoImpl>
      get copyWith => __$$GetMatchesInfoResponseDtoImplCopyWithImpl<
          _$GetMatchesInfoResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMatchesInfoResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetMatchesInfoResponseDto extends GetMatchesInfoResponseDto
    implements StatsOverview {
  const factory _GetMatchesInfoResponseDto(
      {@JsonKey(name: 'halfsScores') required final List<String> periodScores,
      required final List<String> teamNames,
      required final Score score,
      required final List<PrimaryMetric> metrics,
      required final bool winByOT,
      required final String homeTeamLogo,
      required final String awayTeamLogo}) = _$GetMatchesInfoResponseDtoImpl;
  const _GetMatchesInfoResponseDto._() : super._();

  factory _GetMatchesInfoResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetMatchesInfoResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'halfsScores')
  List<String> get periodScores;
  @override
  List<String> get teamNames;
  @override
  Score get score;
  @override
  List<PrimaryMetric> get metrics;
  @override
  bool get winByOT;
  @override
  String get homeTeamLogo;
  @override
  String get awayTeamLogo;
  @override
  @JsonKey(ignore: true)
  _$$GetMatchesInfoResponseDtoImplCopyWith<_$GetMatchesInfoResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
