// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsGetMatchIndexPageInfoResponseDto
    _$StatisticsGetMatchIndexPageInfoResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _StatsOverview.fromJson(json);
}

/// @nodoc
mixin _$StatisticsGetMatchIndexPageInfoResponseDto {
  @JsonKey(name: 'halfsScores')
  List<String> get halfScores => throw _privateConstructorUsedError;
  List<String> get teamNames => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;
  List<PrimaryMetric> get metrics => throw _privateConstructorUsedError;
  bool get weAtHome => throw _privateConstructorUsedError;
  @JsonKey(name: 'winByBuls')
  bool get winByBullitts => throw _privateConstructorUsedError;
  bool get winByOT => throw _privateConstructorUsedError;
  TeamLogo? get teamLogo => throw _privateConstructorUsedError;
  TeamProtocol? get protocol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsGetMatchIndexPageInfoResponseDtoCopyWith<
          StatisticsGetMatchIndexPageInfoResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsGetMatchIndexPageInfoResponseDtoCopyWith<$Res> {
  factory $StatisticsGetMatchIndexPageInfoResponseDtoCopyWith(
          StatisticsGetMatchIndexPageInfoResponseDto value,
          $Res Function(StatisticsGetMatchIndexPageInfoResponseDto) then) =
      _$StatisticsGetMatchIndexPageInfoResponseDtoCopyWithImpl<$Res,
          StatisticsGetMatchIndexPageInfoResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'halfsScores') List<String> halfScores,
      List<String> teamNames,
      Score score,
      List<PrimaryMetric> metrics,
      bool weAtHome,
      @JsonKey(name: 'winByBuls') bool winByBullitts,
      bool winByOT,
      TeamLogo? teamLogo,
      TeamProtocol? protocol});

  $TeamLogoCopyWith<$Res>? get teamLogo;
  $TeamProtocolCopyWith<$Res>? get protocol;
}

/// @nodoc
class _$StatisticsGetMatchIndexPageInfoResponseDtoCopyWithImpl<$Res,
        $Val extends StatisticsGetMatchIndexPageInfoResponseDto>
    implements $StatisticsGetMatchIndexPageInfoResponseDtoCopyWith<$Res> {
  _$StatisticsGetMatchIndexPageInfoResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halfScores = null,
    Object? teamNames = null,
    Object? score = null,
    Object? metrics = null,
    Object? weAtHome = null,
    Object? winByBullitts = null,
    Object? winByOT = null,
    Object? teamLogo = freezed,
    Object? protocol = freezed,
  }) {
    return _then(_value.copyWith(
      halfScores: null == halfScores
          ? _value.halfScores
          : halfScores // ignore: cast_nullable_to_non_nullable
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
      weAtHome: null == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool,
      winByBullitts: null == winByBullitts
          ? _value.winByBullitts
          : winByBullitts // ignore: cast_nullable_to_non_nullable
              as bool,
      winByOT: null == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool,
      teamLogo: freezed == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as TeamLogo?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as TeamProtocol?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamLogoCopyWith<$Res>? get teamLogo {
    if (_value.teamLogo == null) {
      return null;
    }

    return $TeamLogoCopyWith<$Res>(_value.teamLogo!, (value) {
      return _then(_value.copyWith(teamLogo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamProtocolCopyWith<$Res>? get protocol {
    if (_value.protocol == null) {
      return null;
    }

    return $TeamProtocolCopyWith<$Res>(_value.protocol!, (value) {
      return _then(_value.copyWith(protocol: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsOverviewImplCopyWith<$Res>
    implements $StatisticsGetMatchIndexPageInfoResponseDtoCopyWith<$Res> {
  factory _$$StatsOverviewImplCopyWith(
          _$StatsOverviewImpl value, $Res Function(_$StatsOverviewImpl) then) =
      __$$StatsOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'halfsScores') List<String> halfScores,
      List<String> teamNames,
      Score score,
      List<PrimaryMetric> metrics,
      bool weAtHome,
      @JsonKey(name: 'winByBuls') bool winByBullitts,
      bool winByOT,
      TeamLogo? teamLogo,
      TeamProtocol? protocol});

  @override
  $TeamLogoCopyWith<$Res>? get teamLogo;
  @override
  $TeamProtocolCopyWith<$Res>? get protocol;
}

/// @nodoc
class __$$StatsOverviewImplCopyWithImpl<$Res>
    extends _$StatisticsGetMatchIndexPageInfoResponseDtoCopyWithImpl<$Res,
        _$StatsOverviewImpl> implements _$$StatsOverviewImplCopyWith<$Res> {
  __$$StatsOverviewImplCopyWithImpl(
      _$StatsOverviewImpl _value, $Res Function(_$StatsOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halfScores = null,
    Object? teamNames = null,
    Object? score = null,
    Object? metrics = null,
    Object? weAtHome = null,
    Object? winByBullitts = null,
    Object? winByOT = null,
    Object? teamLogo = freezed,
    Object? protocol = freezed,
  }) {
    return _then(_$StatsOverviewImpl(
      halfScores: null == halfScores
          ? _value._halfScores
          : halfScores // ignore: cast_nullable_to_non_nullable
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
      weAtHome: null == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool,
      winByBullitts: null == winByBullitts
          ? _value.winByBullitts
          : winByBullitts // ignore: cast_nullable_to_non_nullable
              as bool,
      winByOT: null == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool,
      teamLogo: freezed == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as TeamLogo?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as TeamProtocol?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsOverviewImpl extends _StatsOverview {
  const _$StatsOverviewImpl(
      {@JsonKey(name: 'halfsScores') required final List<String> halfScores,
      required final List<String> teamNames,
      required this.score,
      required final List<PrimaryMetric> metrics,
      required this.weAtHome,
      @JsonKey(name: 'winByBuls') required this.winByBullitts,
      required this.winByOT,
      this.teamLogo,
      required this.protocol})
      : _halfScores = halfScores,
        _teamNames = teamNames,
        _metrics = metrics,
        super._();

  factory _$StatsOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsOverviewImplFromJson(json);

  final List<String> _halfScores;
  @override
  @JsonKey(name: 'halfsScores')
  List<String> get halfScores {
    if (_halfScores is EqualUnmodifiableListView) return _halfScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfScores);
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
  final bool weAtHome;
  @override
  @JsonKey(name: 'winByBuls')
  final bool winByBullitts;
  @override
  final bool winByOT;
  @override
  final TeamLogo? teamLogo;
  @override
  final TeamProtocol? protocol;

  @override
  String toString() {
    return 'StatisticsGetMatchIndexPageInfoResponseDto(halfScores: $halfScores, teamNames: $teamNames, score: $score, metrics: $metrics, weAtHome: $weAtHome, winByBullitts: $winByBullitts, winByOT: $winByOT, teamLogo: $teamLogo, protocol: $protocol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsOverviewImpl &&
            const DeepCollectionEquality()
                .equals(other._halfScores, _halfScores) &&
            const DeepCollectionEquality()
                .equals(other._teamNames, _teamNames) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            (identical(other.weAtHome, weAtHome) ||
                other.weAtHome == weAtHome) &&
            (identical(other.winByBullitts, winByBullitts) ||
                other.winByBullitts == winByBullitts) &&
            (identical(other.winByOT, winByOT) || other.winByOT == winByOT) &&
            (identical(other.teamLogo, teamLogo) ||
                other.teamLogo == teamLogo) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_halfScores),
      const DeepCollectionEquality().hash(_teamNames),
      score,
      const DeepCollectionEquality().hash(_metrics),
      weAtHome,
      winByBullitts,
      winByOT,
      teamLogo,
      protocol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsOverviewImplCopyWith<_$StatsOverviewImpl> get copyWith =>
      __$$StatsOverviewImplCopyWithImpl<_$StatsOverviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsOverviewImplToJson(
      this,
    );
  }
}

abstract class _StatsOverview extends StatisticsGetMatchIndexPageInfoResponseDto
    implements StatsOverview {
  const factory _StatsOverview(
      {@JsonKey(name: 'halfsScores') required final List<String> halfScores,
      required final List<String> teamNames,
      required final Score score,
      required final List<PrimaryMetric> metrics,
      required final bool weAtHome,
      @JsonKey(name: 'winByBuls') required final bool winByBullitts,
      required final bool winByOT,
      final TeamLogo? teamLogo,
      required final TeamProtocol? protocol}) = _$StatsOverviewImpl;
  const _StatsOverview._() : super._();

  factory _StatsOverview.fromJson(Map<String, dynamic> json) =
      _$StatsOverviewImpl.fromJson;

  @override
  @JsonKey(name: 'halfsScores')
  List<String> get halfScores;
  @override
  List<String> get teamNames;
  @override
  Score get score;
  @override
  List<PrimaryMetric> get metrics;
  @override
  bool get weAtHome;
  @override
  @JsonKey(name: 'winByBuls')
  bool get winByBullitts;
  @override
  bool get winByOT;
  @override
  TeamLogo? get teamLogo;
  @override
  TeamProtocol? get protocol;
  @override
  @JsonKey(ignore: true)
  _$$StatsOverviewImplCopyWith<_$StatsOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamLogo _$TeamLogoFromJson(Map<String, dynamic> json) {
  return _TeamLogo.fromJson(json);
}

/// @nodoc
mixin _$TeamLogo {
  String? get home => throw _privateConstructorUsedError;
  String? get away => throw _privateConstructorUsedError;
  int? get homePercent => throw _privateConstructorUsedError;
  int? get awayPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamLogoCopyWith<TeamLogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamLogoCopyWith<$Res> {
  factory $TeamLogoCopyWith(TeamLogo value, $Res Function(TeamLogo) then) =
      _$TeamLogoCopyWithImpl<$Res, TeamLogo>;
  @useResult
  $Res call({String? home, String? away, int? homePercent, int? awayPercent});
}

/// @nodoc
class _$TeamLogoCopyWithImpl<$Res, $Val extends TeamLogo>
    implements $TeamLogoCopyWith<$Res> {
  _$TeamLogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
    Object? homePercent = freezed,
    Object? awayPercent = freezed,
  }) {
    return _then(_value.copyWith(
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
      homePercent: freezed == homePercent
          ? _value.homePercent
          : homePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      awayPercent: freezed == awayPercent
          ? _value.awayPercent
          : awayPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamLogoImplCopyWith<$Res>
    implements $TeamLogoCopyWith<$Res> {
  factory _$$TeamLogoImplCopyWith(
          _$TeamLogoImpl value, $Res Function(_$TeamLogoImpl) then) =
      __$$TeamLogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? home, String? away, int? homePercent, int? awayPercent});
}

/// @nodoc
class __$$TeamLogoImplCopyWithImpl<$Res>
    extends _$TeamLogoCopyWithImpl<$Res, _$TeamLogoImpl>
    implements _$$TeamLogoImplCopyWith<$Res> {
  __$$TeamLogoImplCopyWithImpl(
      _$TeamLogoImpl _value, $Res Function(_$TeamLogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
    Object? homePercent = freezed,
    Object? awayPercent = freezed,
  }) {
    return _then(_$TeamLogoImpl(
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
      homePercent: freezed == homePercent
          ? _value.homePercent
          : homePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      awayPercent: freezed == awayPercent
          ? _value.awayPercent
          : awayPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamLogoImpl implements _TeamLogo {
  const _$TeamLogoImpl(
      {required this.home,
      required this.away,
      this.homePercent,
      this.awayPercent});

  factory _$TeamLogoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamLogoImplFromJson(json);

  @override
  final String? home;
  @override
  final String? away;
  @override
  final int? homePercent;
  @override
  final int? awayPercent;

  @override
  String toString() {
    return 'TeamLogo(home: $home, away: $away, homePercent: $homePercent, awayPercent: $awayPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamLogoImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.homePercent, homePercent) ||
                other.homePercent == homePercent) &&
            (identical(other.awayPercent, awayPercent) ||
                other.awayPercent == awayPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, home, away, homePercent, awayPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamLogoImplCopyWith<_$TeamLogoImpl> get copyWith =>
      __$$TeamLogoImplCopyWithImpl<_$TeamLogoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamLogoImplToJson(
      this,
    );
  }
}

abstract class _TeamLogo implements TeamLogo {
  const factory _TeamLogo(
      {required final String? home,
      required final String? away,
      final int? homePercent,
      final int? awayPercent}) = _$TeamLogoImpl;

  factory _TeamLogo.fromJson(Map<String, dynamic> json) =
      _$TeamLogoImpl.fromJson;

  @override
  String? get home;
  @override
  String? get away;
  @override
  int? get homePercent;
  @override
  int? get awayPercent;
  @override
  @JsonKey(ignore: true)
  _$$TeamLogoImplCopyWith<_$TeamLogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamProtocol _$TeamProtocolFromJson(Map<String, dynamic> json) {
  return _TeamProtocol.fromJson(json);
}

/// @nodoc
mixin _$TeamProtocol {
  List<Protocol>? get home => throw _privateConstructorUsedError;
  List<Protocol>? get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamProtocolCopyWith<TeamProtocol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamProtocolCopyWith<$Res> {
  factory $TeamProtocolCopyWith(
          TeamProtocol value, $Res Function(TeamProtocol) then) =
      _$TeamProtocolCopyWithImpl<$Res, TeamProtocol>;
  @useResult
  $Res call({List<Protocol>? home, List<Protocol>? away});
}

/// @nodoc
class _$TeamProtocolCopyWithImpl<$Res, $Val extends TeamProtocol>
    implements $TeamProtocolCopyWith<$Res> {
  _$TeamProtocolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as List<Protocol>?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as List<Protocol>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamProtocolImplCopyWith<$Res>
    implements $TeamProtocolCopyWith<$Res> {
  factory _$$TeamProtocolImplCopyWith(
          _$TeamProtocolImpl value, $Res Function(_$TeamProtocolImpl) then) =
      __$$TeamProtocolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Protocol>? home, List<Protocol>? away});
}

/// @nodoc
class __$$TeamProtocolImplCopyWithImpl<$Res>
    extends _$TeamProtocolCopyWithImpl<$Res, _$TeamProtocolImpl>
    implements _$$TeamProtocolImplCopyWith<$Res> {
  __$$TeamProtocolImplCopyWithImpl(
      _$TeamProtocolImpl _value, $Res Function(_$TeamProtocolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_$TeamProtocolImpl(
      home: freezed == home
          ? _value._home
          : home // ignore: cast_nullable_to_non_nullable
              as List<Protocol>?,
      away: freezed == away
          ? _value._away
          : away // ignore: cast_nullable_to_non_nullable
              as List<Protocol>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamProtocolImpl implements _TeamProtocol {
  const _$TeamProtocolImpl(
      {final List<Protocol>? home, final List<Protocol>? away})
      : _home = home,
        _away = away;

  factory _$TeamProtocolImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamProtocolImplFromJson(json);

  final List<Protocol>? _home;
  @override
  List<Protocol>? get home {
    final value = _home;
    if (value == null) return null;
    if (_home is EqualUnmodifiableListView) return _home;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Protocol>? _away;
  @override
  List<Protocol>? get away {
    final value = _away;
    if (value == null) return null;
    if (_away is EqualUnmodifiableListView) return _away;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamProtocol(home: $home, away: $away)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamProtocolImpl &&
            const DeepCollectionEquality().equals(other._home, _home) &&
            const DeepCollectionEquality().equals(other._away, _away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_home),
      const DeepCollectionEquality().hash(_away));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamProtocolImplCopyWith<_$TeamProtocolImpl> get copyWith =>
      __$$TeamProtocolImplCopyWithImpl<_$TeamProtocolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamProtocolImplToJson(
      this,
    );
  }
}

abstract class _TeamProtocol implements TeamProtocol {
  const factory _TeamProtocol(
      {final List<Protocol>? home,
      final List<Protocol>? away}) = _$TeamProtocolImpl;

  factory _TeamProtocol.fromJson(Map<String, dynamic> json) =
      _$TeamProtocolImpl.fromJson;

  @override
  List<Protocol>? get home;
  @override
  List<Protocol>? get away;
  @override
  @JsonKey(ignore: true)
  _$$TeamProtocolImplCopyWith<_$TeamProtocolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Protocol _$ProtocolFromJson(Map<String, dynamic> json) {
  return _Protocol.fromJson(json);
}

/// @nodoc
mixin _$Protocol {
  String? get playerName => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'majority')
  bool get isMajority => throw _privateConstructorUsedError;
  @JsonKey(name: 'minority')
  bool get isMinority => throw _privateConstructorUsedError;
  bool get isFinalGoal => throw _privateConstructorUsedError;
  List<Map<String, String>?>? get assists => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: true)
  bool? get isHome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProtocolCopyWith<Protocol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtocolCopyWith<$Res> {
  factory $ProtocolCopyWith(Protocol value, $Res Function(Protocol) then) =
      _$ProtocolCopyWithImpl<$Res, Protocol>;
  @useResult
  $Res call(
      {String? playerName,
      String? time,
      @JsonKey(name: 'majority') bool isMajority,
      @JsonKey(name: 'minority') bool isMinority,
      bool isFinalGoal,
      List<Map<String, String>?>? assists,
      @JsonKey(defaultValue: true) bool? isHome});
}

/// @nodoc
class _$ProtocolCopyWithImpl<$Res, $Val extends Protocol>
    implements $ProtocolCopyWith<$Res> {
  _$ProtocolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = freezed,
    Object? time = freezed,
    Object? isMajority = null,
    Object? isMinority = null,
    Object? isFinalGoal = null,
    Object? assists = freezed,
    Object? isHome = freezed,
  }) {
    return _then(_value.copyWith(
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isMajority: null == isMajority
          ? _value.isMajority
          : isMajority // ignore: cast_nullable_to_non_nullable
              as bool,
      isMinority: null == isMinority
          ? _value.isMinority
          : isMinority // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinalGoal: null == isFinalGoal
          ? _value.isFinalGoal
          : isFinalGoal // ignore: cast_nullable_to_non_nullable
              as bool,
      assists: freezed == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>?>?,
      isHome: freezed == isHome
          ? _value.isHome
          : isHome // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProtocolImplCopyWith<$Res>
    implements $ProtocolCopyWith<$Res> {
  factory _$$ProtocolImplCopyWith(
          _$ProtocolImpl value, $Res Function(_$ProtocolImpl) then) =
      __$$ProtocolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? playerName,
      String? time,
      @JsonKey(name: 'majority') bool isMajority,
      @JsonKey(name: 'minority') bool isMinority,
      bool isFinalGoal,
      List<Map<String, String>?>? assists,
      @JsonKey(defaultValue: true) bool? isHome});
}

/// @nodoc
class __$$ProtocolImplCopyWithImpl<$Res>
    extends _$ProtocolCopyWithImpl<$Res, _$ProtocolImpl>
    implements _$$ProtocolImplCopyWith<$Res> {
  __$$ProtocolImplCopyWithImpl(
      _$ProtocolImpl _value, $Res Function(_$ProtocolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = freezed,
    Object? time = freezed,
    Object? isMajority = null,
    Object? isMinority = null,
    Object? isFinalGoal = null,
    Object? assists = freezed,
    Object? isHome = freezed,
  }) {
    return _then(_$ProtocolImpl(
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isMajority: null == isMajority
          ? _value.isMajority
          : isMajority // ignore: cast_nullable_to_non_nullable
              as bool,
      isMinority: null == isMinority
          ? _value.isMinority
          : isMinority // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinalGoal: null == isFinalGoal
          ? _value.isFinalGoal
          : isFinalGoal // ignore: cast_nullable_to_non_nullable
              as bool,
      assists: freezed == assists
          ? _value._assists
          : assists // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>?>?,
      isHome: freezed == isHome
          ? _value.isHome
          : isHome // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProtocolImpl extends _Protocol {
  const _$ProtocolImpl(
      {required this.playerName,
      required this.time,
      @JsonKey(name: 'majority') required this.isMajority,
      @JsonKey(name: 'minority') required this.isMinority,
      required this.isFinalGoal,
      required final List<Map<String, String>?>? assists,
      @JsonKey(defaultValue: true) this.isHome})
      : _assists = assists,
        super._();

  factory _$ProtocolImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProtocolImplFromJson(json);

  @override
  final String? playerName;
  @override
  final String? time;
  @override
  @JsonKey(name: 'majority')
  final bool isMajority;
  @override
  @JsonKey(name: 'minority')
  final bool isMinority;
  @override
  final bool isFinalGoal;
  final List<Map<String, String>?>? _assists;
  @override
  List<Map<String, String>?>? get assists {
    final value = _assists;
    if (value == null) return null;
    if (_assists is EqualUnmodifiableListView) return _assists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(defaultValue: true)
  final bool? isHome;

  @override
  String toString() {
    return 'Protocol(playerName: $playerName, time: $time, isMajority: $isMajority, isMinority: $isMinority, isFinalGoal: $isFinalGoal, assists: $assists, isHome: $isHome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isMajority, isMajority) ||
                other.isMajority == isMajority) &&
            (identical(other.isMinority, isMinority) ||
                other.isMinority == isMinority) &&
            (identical(other.isFinalGoal, isFinalGoal) ||
                other.isFinalGoal == isFinalGoal) &&
            const DeepCollectionEquality().equals(other._assists, _assists) &&
            (identical(other.isHome, isHome) || other.isHome == isHome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerName,
      time,
      isMajority,
      isMinority,
      isFinalGoal,
      const DeepCollectionEquality().hash(_assists),
      isHome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolImplCopyWith<_$ProtocolImpl> get copyWith =>
      __$$ProtocolImplCopyWithImpl<_$ProtocolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProtocolImplToJson(
      this,
    );
  }
}

abstract class _Protocol extends Protocol {
  const factory _Protocol(
      {required final String? playerName,
      required final String? time,
      @JsonKey(name: 'majority') required final bool isMajority,
      @JsonKey(name: 'minority') required final bool isMinority,
      required final bool isFinalGoal,
      required final List<Map<String, String>?>? assists,
      @JsonKey(defaultValue: true) final bool? isHome}) = _$ProtocolImpl;
  const _Protocol._() : super._();

  factory _Protocol.fromJson(Map<String, dynamic> json) =
      _$ProtocolImpl.fromJson;

  @override
  String? get playerName;
  @override
  String? get time;
  @override
  @JsonKey(name: 'majority')
  bool get isMajority;
  @override
  @JsonKey(name: 'minority')
  bool get isMinority;
  @override
  bool get isFinalGoal;
  @override
  List<Map<String, String>?>? get assists;
  @override
  @JsonKey(defaultValue: true)
  bool? get isHome;
  @override
  @JsonKey(ignore: true)
  _$$ProtocolImplCopyWith<_$ProtocolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
