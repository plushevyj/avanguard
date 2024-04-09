// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  int get teamMKCId => throw _privateConstructorUsedError;
  String get tournamentName => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get againstTopThree => throw _privateConstructorUsedError;
  int get potentialPoints => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Game> get games => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  bool get isFinal => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res, Tournament>;
  @useResult
  $Res call(
      {int teamMKCId,
      String tournamentName,
      String teamName,
      int rank,
      int points,
      int againstTopThree,
      int potentialPoints,
      @JsonKey(defaultValue: []) List<Game> games,
      String groupName,
      bool isFinal,
      String season});
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res, $Val extends Tournament>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamMKCId = null,
    Object? tournamentName = null,
    Object? teamName = null,
    Object? rank = null,
    Object? points = null,
    Object? againstTopThree = null,
    Object? potentialPoints = null,
    Object? games = null,
    Object? groupName = null,
    Object? isFinal = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      teamMKCId: null == teamMKCId
          ? _value.teamMKCId
          : teamMKCId // ignore: cast_nullable_to_non_nullable
              as int,
      tournamentName: null == tournamentName
          ? _value.tournamentName
          : tournamentName // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      againstTopThree: null == againstTopThree
          ? _value.againstTopThree
          : againstTopThree // ignore: cast_nullable_to_non_nullable
              as int,
      potentialPoints: null == potentialPoints
          ? _value.potentialPoints
          : potentialPoints // ignore: cast_nullable_to_non_nullable
              as int,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isFinal: null == isFinal
          ? _value.isFinal
          : isFinal // ignore: cast_nullable_to_non_nullable
              as bool,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TournamentImplCopyWith<$Res>
    implements $TournamentCopyWith<$Res> {
  factory _$$TournamentImplCopyWith(
          _$TournamentImpl value, $Res Function(_$TournamentImpl) then) =
      __$$TournamentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int teamMKCId,
      String tournamentName,
      String teamName,
      int rank,
      int points,
      int againstTopThree,
      int potentialPoints,
      @JsonKey(defaultValue: []) List<Game> games,
      String groupName,
      bool isFinal,
      String season});
}

/// @nodoc
class __$$TournamentImplCopyWithImpl<$Res>
    extends _$TournamentCopyWithImpl<$Res, _$TournamentImpl>
    implements _$$TournamentImplCopyWith<$Res> {
  __$$TournamentImplCopyWithImpl(
      _$TournamentImpl _value, $Res Function(_$TournamentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamMKCId = null,
    Object? tournamentName = null,
    Object? teamName = null,
    Object? rank = null,
    Object? points = null,
    Object? againstTopThree = null,
    Object? potentialPoints = null,
    Object? games = null,
    Object? groupName = null,
    Object? isFinal = null,
    Object? season = null,
  }) {
    return _then(_$TournamentImpl(
      teamMKCId: null == teamMKCId
          ? _value.teamMKCId
          : teamMKCId // ignore: cast_nullable_to_non_nullable
              as int,
      tournamentName: null == tournamentName
          ? _value.tournamentName
          : tournamentName // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      againstTopThree: null == againstTopThree
          ? _value.againstTopThree
          : againstTopThree // ignore: cast_nullable_to_non_nullable
              as int,
      potentialPoints: null == potentialPoints
          ? _value.potentialPoints
          : potentialPoints // ignore: cast_nullable_to_non_nullable
              as int,
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isFinal: null == isFinal
          ? _value.isFinal
          : isFinal // ignore: cast_nullable_to_non_nullable
              as bool,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentImpl implements _Tournament {
  const _$TournamentImpl(
      {required this.teamMKCId,
      required this.tournamentName,
      required this.teamName,
      required this.rank,
      required this.points,
      required this.againstTopThree,
      required this.potentialPoints,
      @JsonKey(defaultValue: []) required final List<Game> games,
      required this.groupName,
      required this.isFinal,
      required this.season})
      : _games = games;

  factory _$TournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentImplFromJson(json);

  @override
  final int teamMKCId;
  @override
  final String tournamentName;
  @override
  final String teamName;
  @override
  final int rank;
  @override
  final int points;
  @override
  final int againstTopThree;
  @override
  final int potentialPoints;
  final List<Game> _games;
  @override
  @JsonKey(defaultValue: [])
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final String groupName;
  @override
  final bool isFinal;
  @override
  final String season;

  @override
  String toString() {
    return 'Tournament(teamMKCId: $teamMKCId, tournamentName: $tournamentName, teamName: $teamName, rank: $rank, points: $points, againstTopThree: $againstTopThree, potentialPoints: $potentialPoints, games: $games, groupName: $groupName, isFinal: $isFinal, season: $season)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentImpl &&
            (identical(other.teamMKCId, teamMKCId) ||
                other.teamMKCId == teamMKCId) &&
            (identical(other.tournamentName, tournamentName) ||
                other.tournamentName == tournamentName) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.againstTopThree, againstTopThree) ||
                other.againstTopThree == againstTopThree) &&
            (identical(other.potentialPoints, potentialPoints) ||
                other.potentialPoints == potentialPoints) &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.isFinal, isFinal) || other.isFinal == isFinal) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      teamMKCId,
      tournamentName,
      teamName,
      rank,
      points,
      againstTopThree,
      potentialPoints,
      const DeepCollectionEquality().hash(_games),
      groupName,
      isFinal,
      season);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      __$$TournamentImplCopyWithImpl<_$TournamentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentImplToJson(
      this,
    );
  }
}

abstract class _Tournament implements Tournament {
  const factory _Tournament(
      {required final int teamMKCId,
      required final String tournamentName,
      required final String teamName,
      required final int rank,
      required final int points,
      required final int againstTopThree,
      required final int potentialPoints,
      @JsonKey(defaultValue: []) required final List<Game> games,
      required final String groupName,
      required final bool isFinal,
      required final String season}) = _$TournamentImpl;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$TournamentImpl.fromJson;

  @override
  int get teamMKCId;
  @override
  String get tournamentName;
  @override
  String get teamName;
  @override
  int get rank;
  @override
  int get points;
  @override
  int get againstTopThree;
  @override
  int get potentialPoints;
  @override
  @JsonKey(defaultValue: [])
  List<Game> get games;
  @override
  String get groupName;
  @override
  bool get isFinal;
  @override
  String get season;
  @override
  @JsonKey(ignore: true)
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date => throw _privateConstructorUsedError;
  String get opponent => throw _privateConstructorUsedError;
  int get homeScore => throw _privateConstructorUsedError;
  int get awayScore => throw _privateConstructorUsedError;
  String get resultDiagram => throw _privateConstructorUsedError;
  String? get statisticId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String opponent,
      int homeScore,
      int awayScore,
      String resultDiagram,
      String? statisticId});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? opponent = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? resultDiagram = null,
    Object? statisticId = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      opponent: null == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as String,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
      resultDiagram: null == resultDiagram
          ? _value.resultDiagram
          : resultDiagram // ignore: cast_nullable_to_non_nullable
              as String,
      statisticId: freezed == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String opponent,
      int homeScore,
      int awayScore,
      String resultDiagram,
      String? statisticId});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? opponent = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? resultDiagram = null,
    Object? statisticId = freezed,
  }) {
    return _then(_$GameImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      opponent: null == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as String,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
      resultDiagram: null == resultDiagram
          ? _value.resultDiagram
          : resultDiagram // ignore: cast_nullable_to_non_nullable
              as String,
      statisticId: freezed == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl extends _Game {
  const _$GameImpl(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required this.date,
      required this.opponent,
      required this.homeScore,
      required this.awayScore,
      required this.resultDiagram,
      this.statisticId})
      : super._();

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  final DateTime date;
  @override
  final String opponent;
  @override
  final int homeScore;
  @override
  final int awayScore;
  @override
  final String resultDiagram;
  @override
  final String? statisticId;

  @override
  String toString() {
    return 'Game(date: $date, opponent: $opponent, homeScore: $homeScore, awayScore: $awayScore, resultDiagram: $resultDiagram, statisticId: $statisticId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.opponent, opponent) ||
                other.opponent == opponent) &&
            (identical(other.homeScore, homeScore) ||
                other.homeScore == homeScore) &&
            (identical(other.awayScore, awayScore) ||
                other.awayScore == awayScore) &&
            (identical(other.resultDiagram, resultDiagram) ||
                other.resultDiagram == resultDiagram) &&
            (identical(other.statisticId, statisticId) ||
                other.statisticId == statisticId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, opponent, homeScore,
      awayScore, resultDiagram, statisticId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game extends Game implements GameInterface {
  const factory _Game(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required final DateTime date,
      required final String opponent,
      required final int homeScore,
      required final int awayScore,
      required final String resultDiagram,
      final String? statisticId}) = _$GameImpl;
  const _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date;
  @override
  String get opponent;
  @override
  int get homeScore;
  @override
  int get awayScore;
  @override
  String get resultDiagram;
  @override
  String? get statisticId;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
