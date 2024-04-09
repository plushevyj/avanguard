// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_past_games.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MKCTablePagePastGamesResponseDto _$MKCTablePagePastGamesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _MKCTablePagePastGamesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePagePastGamesResponseDto {
  List<MKCTablePagePastGameItemDto> get games =>
      throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePagePastGamesResponseDtoCopyWith<MKCTablePagePastGamesResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePagePastGamesResponseDtoCopyWith<$Res> {
  factory $MKCTablePagePastGamesResponseDtoCopyWith(
          MKCTablePagePastGamesResponseDto value,
          $Res Function(MKCTablePagePastGamesResponseDto) then) =
      _$MKCTablePagePastGamesResponseDtoCopyWithImpl<$Res,
          MKCTablePagePastGamesResponseDto>;
  @useResult
  $Res call({List<MKCTablePagePastGameItemDto> games, int pages});
}

/// @nodoc
class _$MKCTablePagePastGamesResponseDtoCopyWithImpl<$Res,
        $Val extends MKCTablePagePastGamesResponseDto>
    implements $MKCTablePagePastGamesResponseDtoCopyWith<$Res> {
  _$MKCTablePagePastGamesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<MKCTablePagePastGameItemDto>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MKCTablePagePastGamesResponseDtoImplCopyWith<$Res>
    implements $MKCTablePagePastGamesResponseDtoCopyWith<$Res> {
  factory _$$MKCTablePagePastGamesResponseDtoImplCopyWith(
          _$MKCTablePagePastGamesResponseDtoImpl value,
          $Res Function(_$MKCTablePagePastGamesResponseDtoImpl) then) =
      __$$MKCTablePagePastGamesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MKCTablePagePastGameItemDto> games, int pages});
}

/// @nodoc
class __$$MKCTablePagePastGamesResponseDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePagePastGamesResponseDtoCopyWithImpl<$Res,
        _$MKCTablePagePastGamesResponseDtoImpl>
    implements _$$MKCTablePagePastGamesResponseDtoImplCopyWith<$Res> {
  __$$MKCTablePagePastGamesResponseDtoImplCopyWithImpl(
      _$MKCTablePagePastGamesResponseDtoImpl _value,
      $Res Function(_$MKCTablePagePastGamesResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? pages = null,
  }) {
    return _then(_$MKCTablePagePastGamesResponseDtoImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<MKCTablePagePastGameItemDto>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePagePastGamesResponseDtoImpl
    extends _MKCTablePagePastGamesResponseDto {
  const _$MKCTablePagePastGamesResponseDtoImpl(
      {required final List<MKCTablePagePastGameItemDto> games,
      required this.pages})
      : _games = games,
        super._();

  factory _$MKCTablePagePastGamesResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePagePastGamesResponseDtoImplFromJson(json);

  final List<MKCTablePagePastGameItemDto> _games;
  @override
  List<MKCTablePagePastGameItemDto> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final int pages;

  @override
  String toString() {
    return 'MKCTablePagePastGamesResponseDto(games: $games, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePagePastGamesResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_games), pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePagePastGamesResponseDtoImplCopyWith<
          _$MKCTablePagePastGamesResponseDtoImpl>
      get copyWith => __$$MKCTablePagePastGamesResponseDtoImplCopyWithImpl<
          _$MKCTablePagePastGamesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePagePastGamesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePagePastGamesResponseDto
    extends MKCTablePagePastGamesResponseDto {
  const factory _MKCTablePagePastGamesResponseDto(
      {required final List<MKCTablePagePastGameItemDto> games,
      required final int pages}) = _$MKCTablePagePastGamesResponseDtoImpl;
  const _MKCTablePagePastGamesResponseDto._() : super._();

  factory _MKCTablePagePastGamesResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$MKCTablePagePastGamesResponseDtoImpl.fromJson;

  @override
  List<MKCTablePagePastGameItemDto> get games;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePagePastGamesResponseDtoImplCopyWith<
          _$MKCTablePagePastGamesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MKCTablePagePastGameItemDto _$MKCTablePagePastGameItemDtoFromJson(
    Map<String, dynamic> json) {
  return _MKCTablePagePastGameItemDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePagePastGameItemDto {
  String get homeTeamName => throw _privateConstructorUsedError;
  String get awayTeamName => throw _privateConstructorUsedError;
  String get homeTeamLogo => throw _privateConstructorUsedError;
  String get awayTeamLogo => throw _privateConstructorUsedError;
  int get homeScore => throw _privateConstructorUsedError;
  int get awayScore => throw _privateConstructorUsedError;
  List<List<int>> get halfsScores => throw _privateConstructorUsedError;
  MKCTablePagePastGamesTeamGoalsDto get goals =>
      throw _privateConstructorUsedError;
  bool get isOT => throw _privateConstructorUsedError;
  bool get isBuls => throw _privateConstructorUsedError;
  String? get translationLink => throw _privateConstructorUsedError;
  String? get statisticId => throw _privateConstructorUsedError;
  bool get techResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePagePastGameItemDtoCopyWith<MKCTablePagePastGameItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePagePastGameItemDtoCopyWith<$Res> {
  factory $MKCTablePagePastGameItemDtoCopyWith(
          MKCTablePagePastGameItemDto value,
          $Res Function(MKCTablePagePastGameItemDto) then) =
      _$MKCTablePagePastGameItemDtoCopyWithImpl<$Res,
          MKCTablePagePastGameItemDto>;
  @useResult
  $Res call(
      {String homeTeamName,
      String awayTeamName,
      String homeTeamLogo,
      String awayTeamLogo,
      int homeScore,
      int awayScore,
      List<List<int>> halfsScores,
      MKCTablePagePastGamesTeamGoalsDto goals,
      bool isOT,
      bool isBuls,
      String? translationLink,
      String? statisticId,
      bool techResult});

  $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> get goals;
}

/// @nodoc
class _$MKCTablePagePastGameItemDtoCopyWithImpl<$Res,
        $Val extends MKCTablePagePastGameItemDto>
    implements $MKCTablePagePastGameItemDtoCopyWith<$Res> {
  _$MKCTablePagePastGameItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? homeTeamLogo = null,
    Object? awayTeamLogo = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? halfsScores = null,
    Object? goals = null,
    Object? isOT = null,
    Object? isBuls = null,
    Object? translationLink = freezed,
    Object? statisticId = freezed,
    Object? techResult = null,
  }) {
    return _then(_value.copyWith(
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
      halfsScores: null == halfsScores
          ? _value.halfsScores
          : halfsScores // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesTeamGoalsDto,
      isOT: null == isOT
          ? _value.isOT
          : isOT // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuls: null == isBuls
          ? _value.isBuls
          : isBuls // ignore: cast_nullable_to_non_nullable
              as bool,
      translationLink: freezed == translationLink
          ? _value.translationLink
          : translationLink // ignore: cast_nullable_to_non_nullable
              as String?,
      statisticId: freezed == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String?,
      techResult: null == techResult
          ? _value.techResult
          : techResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> get goals {
    return $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res>(_value.goals,
        (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MKCTablePagePastGameItemDtoImplCopyWith<$Res>
    implements $MKCTablePagePastGameItemDtoCopyWith<$Res> {
  factory _$$MKCTablePagePastGameItemDtoImplCopyWith(
          _$MKCTablePagePastGameItemDtoImpl value,
          $Res Function(_$MKCTablePagePastGameItemDtoImpl) then) =
      __$$MKCTablePagePastGameItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String homeTeamName,
      String awayTeamName,
      String homeTeamLogo,
      String awayTeamLogo,
      int homeScore,
      int awayScore,
      List<List<int>> halfsScores,
      MKCTablePagePastGamesTeamGoalsDto goals,
      bool isOT,
      bool isBuls,
      String? translationLink,
      String? statisticId,
      bool techResult});

  @override
  $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> get goals;
}

/// @nodoc
class __$$MKCTablePagePastGameItemDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePagePastGameItemDtoCopyWithImpl<$Res,
        _$MKCTablePagePastGameItemDtoImpl>
    implements _$$MKCTablePagePastGameItemDtoImplCopyWith<$Res> {
  __$$MKCTablePagePastGameItemDtoImplCopyWithImpl(
      _$MKCTablePagePastGameItemDtoImpl _value,
      $Res Function(_$MKCTablePagePastGameItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? homeTeamLogo = null,
    Object? awayTeamLogo = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? halfsScores = null,
    Object? goals = null,
    Object? isOT = null,
    Object? isBuls = null,
    Object? translationLink = freezed,
    Object? statisticId = freezed,
    Object? techResult = null,
  }) {
    return _then(_$MKCTablePagePastGameItemDtoImpl(
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
      halfsScores: null == halfsScores
          ? _value._halfsScores
          : halfsScores // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesTeamGoalsDto,
      isOT: null == isOT
          ? _value.isOT
          : isOT // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuls: null == isBuls
          ? _value.isBuls
          : isBuls // ignore: cast_nullable_to_non_nullable
              as bool,
      translationLink: freezed == translationLink
          ? _value.translationLink
          : translationLink // ignore: cast_nullable_to_non_nullable
              as String?,
      statisticId: freezed == statisticId
          ? _value.statisticId
          : statisticId // ignore: cast_nullable_to_non_nullable
              as String?,
      techResult: null == techResult
          ? _value.techResult
          : techResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePagePastGameItemDtoImpl extends _MKCTablePagePastGameItemDto {
  const _$MKCTablePagePastGameItemDtoImpl(
      {required this.homeTeamName,
      required this.awayTeamName,
      required this.homeTeamLogo,
      required this.awayTeamLogo,
      required this.homeScore,
      required this.awayScore,
      required final List<List<int>> halfsScores,
      required this.goals,
      required this.isOT,
      required this.isBuls,
      required this.translationLink,
      required this.statisticId,
      required this.techResult})
      : _halfsScores = halfsScores,
        super._();

  factory _$MKCTablePagePastGameItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePagePastGameItemDtoImplFromJson(json);

  @override
  final String homeTeamName;
  @override
  final String awayTeamName;
  @override
  final String homeTeamLogo;
  @override
  final String awayTeamLogo;
  @override
  final int homeScore;
  @override
  final int awayScore;
  final List<List<int>> _halfsScores;
  @override
  List<List<int>> get halfsScores {
    if (_halfsScores is EqualUnmodifiableListView) return _halfsScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfsScores);
  }

  @override
  final MKCTablePagePastGamesTeamGoalsDto goals;
  @override
  final bool isOT;
  @override
  final bool isBuls;
  @override
  final String? translationLink;
  @override
  final String? statisticId;
  @override
  final bool techResult;

  @override
  String toString() {
    return 'MKCTablePagePastGameItemDto(homeTeamName: $homeTeamName, awayTeamName: $awayTeamName, homeTeamLogo: $homeTeamLogo, awayTeamLogo: $awayTeamLogo, homeScore: $homeScore, awayScore: $awayScore, halfsScores: $halfsScores, goals: $goals, isOT: $isOT, isBuls: $isBuls, translationLink: $translationLink, statisticId: $statisticId, techResult: $techResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePagePastGameItemDtoImpl &&
            (identical(other.homeTeamName, homeTeamName) ||
                other.homeTeamName == homeTeamName) &&
            (identical(other.awayTeamName, awayTeamName) ||
                other.awayTeamName == awayTeamName) &&
            (identical(other.homeTeamLogo, homeTeamLogo) ||
                other.homeTeamLogo == homeTeamLogo) &&
            (identical(other.awayTeamLogo, awayTeamLogo) ||
                other.awayTeamLogo == awayTeamLogo) &&
            (identical(other.homeScore, homeScore) ||
                other.homeScore == homeScore) &&
            (identical(other.awayScore, awayScore) ||
                other.awayScore == awayScore) &&
            const DeepCollectionEquality()
                .equals(other._halfsScores, _halfsScores) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.isOT, isOT) || other.isOT == isOT) &&
            (identical(other.isBuls, isBuls) || other.isBuls == isBuls) &&
            (identical(other.translationLink, translationLink) ||
                other.translationLink == translationLink) &&
            (identical(other.statisticId, statisticId) ||
                other.statisticId == statisticId) &&
            (identical(other.techResult, techResult) ||
                other.techResult == techResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeTeamName,
      awayTeamName,
      homeTeamLogo,
      awayTeamLogo,
      homeScore,
      awayScore,
      const DeepCollectionEquality().hash(_halfsScores),
      goals,
      isOT,
      isBuls,
      translationLink,
      statisticId,
      techResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePagePastGameItemDtoImplCopyWith<_$MKCTablePagePastGameItemDtoImpl>
      get copyWith => __$$MKCTablePagePastGameItemDtoImplCopyWithImpl<
          _$MKCTablePagePastGameItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePagePastGameItemDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePagePastGameItemDto
    extends MKCTablePagePastGameItemDto {
  const factory _MKCTablePagePastGameItemDto(
      {required final String homeTeamName,
      required final String awayTeamName,
      required final String homeTeamLogo,
      required final String awayTeamLogo,
      required final int homeScore,
      required final int awayScore,
      required final List<List<int>> halfsScores,
      required final MKCTablePagePastGamesTeamGoalsDto goals,
      required final bool isOT,
      required final bool isBuls,
      required final String? translationLink,
      required final String? statisticId,
      required final bool techResult}) = _$MKCTablePagePastGameItemDtoImpl;
  const _MKCTablePagePastGameItemDto._() : super._();

  factory _MKCTablePagePastGameItemDto.fromJson(Map<String, dynamic> json) =
      _$MKCTablePagePastGameItemDtoImpl.fromJson;

  @override
  String get homeTeamName;
  @override
  String get awayTeamName;
  @override
  String get homeTeamLogo;
  @override
  String get awayTeamLogo;
  @override
  int get homeScore;
  @override
  int get awayScore;
  @override
  List<List<int>> get halfsScores;
  @override
  MKCTablePagePastGamesTeamGoalsDto get goals;
  @override
  bool get isOT;
  @override
  bool get isBuls;
  @override
  String? get translationLink;
  @override
  String? get statisticId;
  @override
  bool get techResult;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePagePastGameItemDtoImplCopyWith<_$MKCTablePagePastGameItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MKCTablePagePastGamesTeamGoalsDto _$MKCTablePagePastGamesTeamGoalsDtoFromJson(
    Map<String, dynamic> json) {
  return _MKCTablePagePastGamesTeamGoalsDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePagePastGamesTeamGoalsDto {
  MKCTablePagePastGamesGamesHalfGoalsDto get homeTeam =>
      throw _privateConstructorUsedError;
  MKCTablePagePastGamesGamesHalfGoalsDto get awayTeam =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePagePastGamesTeamGoalsDtoCopyWith<MKCTablePagePastGamesTeamGoalsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> {
  factory $MKCTablePagePastGamesTeamGoalsDtoCopyWith(
          MKCTablePagePastGamesTeamGoalsDto value,
          $Res Function(MKCTablePagePastGamesTeamGoalsDto) then) =
      _$MKCTablePagePastGamesTeamGoalsDtoCopyWithImpl<$Res,
          MKCTablePagePastGamesTeamGoalsDto>;
  @useResult
  $Res call(
      {MKCTablePagePastGamesGamesHalfGoalsDto homeTeam,
      MKCTablePagePastGamesGamesHalfGoalsDto awayTeam});

  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get homeTeam;
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get awayTeam;
}

/// @nodoc
class _$MKCTablePagePastGamesTeamGoalsDtoCopyWithImpl<$Res,
        $Val extends MKCTablePagePastGamesTeamGoalsDto>
    implements $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> {
  _$MKCTablePagePastGamesTeamGoalsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeam = null,
    Object? awayTeam = null,
  }) {
    return _then(_value.copyWith(
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesGamesHalfGoalsDto,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesGamesHalfGoalsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get homeTeam {
    return $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res>(
        _value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get awayTeam {
    return $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res>(
        _value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWith<$Res>
    implements $MKCTablePagePastGamesTeamGoalsDtoCopyWith<$Res> {
  factory _$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWith(
          _$MKCTablePagePastGamesTeamGoalsDtoImpl value,
          $Res Function(_$MKCTablePagePastGamesTeamGoalsDtoImpl) then) =
      __$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MKCTablePagePastGamesGamesHalfGoalsDto homeTeam,
      MKCTablePagePastGamesGamesHalfGoalsDto awayTeam});

  @override
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get homeTeam;
  @override
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> get awayTeam;
}

/// @nodoc
class __$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePagePastGamesTeamGoalsDtoCopyWithImpl<$Res,
        _$MKCTablePagePastGamesTeamGoalsDtoImpl>
    implements _$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWith<$Res> {
  __$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWithImpl(
      _$MKCTablePagePastGamesTeamGoalsDtoImpl _value,
      $Res Function(_$MKCTablePagePastGamesTeamGoalsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeam = null,
    Object? awayTeam = null,
  }) {
    return _then(_$MKCTablePagePastGamesTeamGoalsDtoImpl(
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesGamesHalfGoalsDto,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as MKCTablePagePastGamesGamesHalfGoalsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePagePastGamesTeamGoalsDtoImpl
    extends _MKCTablePagePastGamesTeamGoalsDto {
  const _$MKCTablePagePastGamesTeamGoalsDtoImpl(
      {required this.homeTeam, required this.awayTeam})
      : super._();

  factory _$MKCTablePagePastGamesTeamGoalsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePagePastGamesTeamGoalsDtoImplFromJson(json);

  @override
  final MKCTablePagePastGamesGamesHalfGoalsDto homeTeam;
  @override
  final MKCTablePagePastGamesGamesHalfGoalsDto awayTeam;

  @override
  String toString() {
    return 'MKCTablePagePastGamesTeamGoalsDto(homeTeam: $homeTeam, awayTeam: $awayTeam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePagePastGamesTeamGoalsDtoImpl &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, homeTeam, awayTeam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWith<
          _$MKCTablePagePastGamesTeamGoalsDtoImpl>
      get copyWith => __$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWithImpl<
          _$MKCTablePagePastGamesTeamGoalsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePagePastGamesTeamGoalsDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePagePastGamesTeamGoalsDto
    extends MKCTablePagePastGamesTeamGoalsDto {
  const factory _MKCTablePagePastGamesTeamGoalsDto(
          {required final MKCTablePagePastGamesGamesHalfGoalsDto homeTeam,
          required final MKCTablePagePastGamesGamesHalfGoalsDto awayTeam}) =
      _$MKCTablePagePastGamesTeamGoalsDtoImpl;
  const _MKCTablePagePastGamesTeamGoalsDto._() : super._();

  factory _MKCTablePagePastGamesTeamGoalsDto.fromJson(
          Map<String, dynamic> json) =
      _$MKCTablePagePastGamesTeamGoalsDtoImpl.fromJson;

  @override
  MKCTablePagePastGamesGamesHalfGoalsDto get homeTeam;
  @override
  MKCTablePagePastGamesGamesHalfGoalsDto get awayTeam;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePagePastGamesTeamGoalsDtoImplCopyWith<
          _$MKCTablePagePastGamesTeamGoalsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MKCTablePagePastGamesGamesHalfGoalsDto
    _$MKCTablePagePastGamesGamesHalfGoalsDtoFromJson(
        Map<String, dynamic> json) {
  return _MKCTablePagePastGamesGamesHalfGoalsDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePagePastGamesGamesHalfGoalsDto {
  List<PastGameGoalItemDto> get firstHalf => throw _privateConstructorUsedError;
  List<PastGameGoalItemDto> get secondHalf =>
      throw _privateConstructorUsedError;
  List<PastGameGoalItemDto> get thirdHalf => throw _privateConstructorUsedError;
  List<PastGameGoalItemDto> get overtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<
          MKCTablePagePastGamesGamesHalfGoalsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> {
  factory $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith(
          MKCTablePagePastGamesGamesHalfGoalsDto value,
          $Res Function(MKCTablePagePastGamesGamesHalfGoalsDto) then) =
      _$MKCTablePagePastGamesGamesHalfGoalsDtoCopyWithImpl<$Res,
          MKCTablePagePastGamesGamesHalfGoalsDto>;
  @useResult
  $Res call(
      {List<PastGameGoalItemDto> firstHalf,
      List<PastGameGoalItemDto> secondHalf,
      List<PastGameGoalItemDto> thirdHalf,
      List<PastGameGoalItemDto> overtime});
}

/// @nodoc
class _$MKCTablePagePastGamesGamesHalfGoalsDtoCopyWithImpl<$Res,
        $Val extends MKCTablePagePastGamesGamesHalfGoalsDto>
    implements $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> {
  _$MKCTablePagePastGamesGamesHalfGoalsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstHalf = null,
    Object? secondHalf = null,
    Object? thirdHalf = null,
    Object? overtime = null,
  }) {
    return _then(_value.copyWith(
      firstHalf: null == firstHalf
          ? _value.firstHalf
          : firstHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      secondHalf: null == secondHalf
          ? _value.secondHalf
          : secondHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      thirdHalf: null == thirdHalf
          ? _value.thirdHalf
          : thirdHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      overtime: null == overtime
          ? _value.overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWith<$Res>
    implements $MKCTablePagePastGamesGamesHalfGoalsDtoCopyWith<$Res> {
  factory _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWith(
          _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl value,
          $Res Function(_$MKCTablePagePastGamesGamesHalfGoalsDtoImpl) then) =
      __$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PastGameGoalItemDto> firstHalf,
      List<PastGameGoalItemDto> secondHalf,
      List<PastGameGoalItemDto> thirdHalf,
      List<PastGameGoalItemDto> overtime});
}

/// @nodoc
class __$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePagePastGamesGamesHalfGoalsDtoCopyWithImpl<$Res,
        _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl>
    implements _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWith<$Res> {
  __$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWithImpl(
      _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl _value,
      $Res Function(_$MKCTablePagePastGamesGamesHalfGoalsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstHalf = null,
    Object? secondHalf = null,
    Object? thirdHalf = null,
    Object? overtime = null,
  }) {
    return _then(_$MKCTablePagePastGamesGamesHalfGoalsDtoImpl(
      firstHalf: null == firstHalf
          ? _value._firstHalf
          : firstHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      secondHalf: null == secondHalf
          ? _value._secondHalf
          : secondHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      thirdHalf: null == thirdHalf
          ? _value._thirdHalf
          : thirdHalf // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
      overtime: null == overtime
          ? _value._overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as List<PastGameGoalItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl
    extends _MKCTablePagePastGamesGamesHalfGoalsDto {
  const _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl(
      {required final List<PastGameGoalItemDto> firstHalf,
      required final List<PastGameGoalItemDto> secondHalf,
      required final List<PastGameGoalItemDto> thirdHalf,
      required final List<PastGameGoalItemDto> overtime})
      : _firstHalf = firstHalf,
        _secondHalf = secondHalf,
        _thirdHalf = thirdHalf,
        _overtime = overtime,
        super._();

  factory _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplFromJson(json);

  final List<PastGameGoalItemDto> _firstHalf;
  @override
  List<PastGameGoalItemDto> get firstHalf {
    if (_firstHalf is EqualUnmodifiableListView) return _firstHalf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_firstHalf);
  }

  final List<PastGameGoalItemDto> _secondHalf;
  @override
  List<PastGameGoalItemDto> get secondHalf {
    if (_secondHalf is EqualUnmodifiableListView) return _secondHalf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondHalf);
  }

  final List<PastGameGoalItemDto> _thirdHalf;
  @override
  List<PastGameGoalItemDto> get thirdHalf {
    if (_thirdHalf is EqualUnmodifiableListView) return _thirdHalf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thirdHalf);
  }

  final List<PastGameGoalItemDto> _overtime;
  @override
  List<PastGameGoalItemDto> get overtime {
    if (_overtime is EqualUnmodifiableListView) return _overtime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overtime);
  }

  @override
  String toString() {
    return 'MKCTablePagePastGamesGamesHalfGoalsDto(firstHalf: $firstHalf, secondHalf: $secondHalf, thirdHalf: $thirdHalf, overtime: $overtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._firstHalf, _firstHalf) &&
            const DeepCollectionEquality()
                .equals(other._secondHalf, _secondHalf) &&
            const DeepCollectionEquality()
                .equals(other._thirdHalf, _thirdHalf) &&
            const DeepCollectionEquality().equals(other._overtime, _overtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_firstHalf),
      const DeepCollectionEquality().hash(_secondHalf),
      const DeepCollectionEquality().hash(_thirdHalf),
      const DeepCollectionEquality().hash(_overtime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWith<
          _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl>
      get copyWith =>
          __$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWithImpl<
              _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePagePastGamesGamesHalfGoalsDto
    extends MKCTablePagePastGamesGamesHalfGoalsDto {
  const factory _MKCTablePagePastGamesGamesHalfGoalsDto(
          {required final List<PastGameGoalItemDto> firstHalf,
          required final List<PastGameGoalItemDto> secondHalf,
          required final List<PastGameGoalItemDto> thirdHalf,
          required final List<PastGameGoalItemDto> overtime}) =
      _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl;
  const _MKCTablePagePastGamesGamesHalfGoalsDto._() : super._();

  factory _MKCTablePagePastGamesGamesHalfGoalsDto.fromJson(
          Map<String, dynamic> json) =
      _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl.fromJson;

  @override
  List<PastGameGoalItemDto> get firstHalf;
  @override
  List<PastGameGoalItemDto> get secondHalf;
  @override
  List<PastGameGoalItemDto> get thirdHalf;
  @override
  List<PastGameGoalItemDto> get overtime;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplCopyWith<
          _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PastGameGoalItemDto _$PastGameGoalItemDtoFromJson(Map<String, dynamic> json) {
  return _PastGameGoalItemDto.fromJson(json);
}

/// @nodoc
mixin _$PastGameGoalItemDto {
  String get playerFirstName => throw _privateConstructorUsedError;
  String get playerLastName => throw _privateConstructorUsedError;
  int get playerNumber => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastGameGoalItemDtoCopyWith<PastGameGoalItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastGameGoalItemDtoCopyWith<$Res> {
  factory $PastGameGoalItemDtoCopyWith(
          PastGameGoalItemDto value, $Res Function(PastGameGoalItemDto) then) =
      _$PastGameGoalItemDtoCopyWithImpl<$Res, PastGameGoalItemDto>;
  @useResult
  $Res call(
      {String playerFirstName,
      String playerLastName,
      int playerNumber,
      String time});
}

/// @nodoc
class _$PastGameGoalItemDtoCopyWithImpl<$Res, $Val extends PastGameGoalItemDto>
    implements $PastGameGoalItemDtoCopyWith<$Res> {
  _$PastGameGoalItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerFirstName = null,
    Object? playerLastName = null,
    Object? playerNumber = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      playerFirstName: null == playerFirstName
          ? _value.playerFirstName
          : playerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      playerLastName: null == playerLastName
          ? _value.playerLastName
          : playerLastName // ignore: cast_nullable_to_non_nullable
              as String,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastGameGoalItemDtoImplCopyWith<$Res>
    implements $PastGameGoalItemDtoCopyWith<$Res> {
  factory _$$PastGameGoalItemDtoImplCopyWith(_$PastGameGoalItemDtoImpl value,
          $Res Function(_$PastGameGoalItemDtoImpl) then) =
      __$$PastGameGoalItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playerFirstName,
      String playerLastName,
      int playerNumber,
      String time});
}

/// @nodoc
class __$$PastGameGoalItemDtoImplCopyWithImpl<$Res>
    extends _$PastGameGoalItemDtoCopyWithImpl<$Res, _$PastGameGoalItemDtoImpl>
    implements _$$PastGameGoalItemDtoImplCopyWith<$Res> {
  __$$PastGameGoalItemDtoImplCopyWithImpl(_$PastGameGoalItemDtoImpl _value,
      $Res Function(_$PastGameGoalItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerFirstName = null,
    Object? playerLastName = null,
    Object? playerNumber = null,
    Object? time = null,
  }) {
    return _then(_$PastGameGoalItemDtoImpl(
      playerFirstName: null == playerFirstName
          ? _value.playerFirstName
          : playerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      playerLastName: null == playerLastName
          ? _value.playerLastName
          : playerLastName // ignore: cast_nullable_to_non_nullable
              as String,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastGameGoalItemDtoImpl extends _PastGameGoalItemDto {
  const _$PastGameGoalItemDtoImpl(
      {required this.playerFirstName,
      required this.playerLastName,
      required this.playerNumber,
      required this.time})
      : super._();

  factory _$PastGameGoalItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastGameGoalItemDtoImplFromJson(json);

  @override
  final String playerFirstName;
  @override
  final String playerLastName;
  @override
  final int playerNumber;
  @override
  final String time;

  @override
  String toString() {
    return 'PastGameGoalItemDto(playerFirstName: $playerFirstName, playerLastName: $playerLastName, playerNumber: $playerNumber, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastGameGoalItemDtoImpl &&
            (identical(other.playerFirstName, playerFirstName) ||
                other.playerFirstName == playerFirstName) &&
            (identical(other.playerLastName, playerLastName) ||
                other.playerLastName == playerLastName) &&
            (identical(other.playerNumber, playerNumber) ||
                other.playerNumber == playerNumber) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, playerFirstName, playerLastName, playerNumber, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastGameGoalItemDtoImplCopyWith<_$PastGameGoalItemDtoImpl> get copyWith =>
      __$$PastGameGoalItemDtoImplCopyWithImpl<_$PastGameGoalItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastGameGoalItemDtoImplToJson(
      this,
    );
  }
}

abstract class _PastGameGoalItemDto extends PastGameGoalItemDto {
  const factory _PastGameGoalItemDto(
      {required final String playerFirstName,
      required final String playerLastName,
      required final int playerNumber,
      required final String time}) = _$PastGameGoalItemDtoImpl;
  const _PastGameGoalItemDto._() : super._();

  factory _PastGameGoalItemDto.fromJson(Map<String, dynamic> json) =
      _$PastGameGoalItemDtoImpl.fromJson;

  @override
  String get playerFirstName;
  @override
  String get playerLastName;
  @override
  int get playerNumber;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$PastGameGoalItemDtoImplCopyWith<_$PastGameGoalItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
