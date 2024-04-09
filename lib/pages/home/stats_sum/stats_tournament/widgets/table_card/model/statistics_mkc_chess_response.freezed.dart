// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_mkc_chess_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsMKCChessResponse _$StatisticsMKCChessResponseFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCChessResponse.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessResponse {
  List<StatisticsMKCChessRowItemDto> get rows =>
      throw _privateConstructorUsedError;
  set rows(List<StatisticsMKCChessRowItemDto> value) =>
      throw _privateConstructorUsedError;
  List<StatisticsMKCChessColumnItemDto> get columns =>
      throw _privateConstructorUsedError;
  set columns(List<StatisticsMKCChessColumnItemDto> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessResponseCopyWith<StatisticsMKCChessResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessResponseCopyWith<$Res> {
  factory $StatisticsMKCChessResponseCopyWith(StatisticsMKCChessResponse value,
          $Res Function(StatisticsMKCChessResponse) then) =
      _$StatisticsMKCChessResponseCopyWithImpl<$Res,
          StatisticsMKCChessResponse>;
  @useResult
  $Res call(
      {List<StatisticsMKCChessRowItemDto> rows,
      List<StatisticsMKCChessColumnItemDto> columns});
}

/// @nodoc
class _$StatisticsMKCChessResponseCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessResponse>
    implements $StatisticsMKCChessResponseCopyWith<$Res> {
  _$StatisticsMKCChessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? columns = null,
  }) {
    return _then(_value.copyWith(
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessRowItemDto>,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessColumnItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessResponseImplCopyWith<$Res>
    implements $StatisticsMKCChessResponseCopyWith<$Res> {
  factory _$$StatisticsMKCChessResponseImplCopyWith(
          _$StatisticsMKCChessResponseImpl value,
          $Res Function(_$StatisticsMKCChessResponseImpl) then) =
      __$$StatisticsMKCChessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StatisticsMKCChessRowItemDto> rows,
      List<StatisticsMKCChessColumnItemDto> columns});
}

/// @nodoc
class __$$StatisticsMKCChessResponseImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessResponseCopyWithImpl<$Res,
        _$StatisticsMKCChessResponseImpl>
    implements _$$StatisticsMKCChessResponseImplCopyWith<$Res> {
  __$$StatisticsMKCChessResponseImplCopyWithImpl(
      _$StatisticsMKCChessResponseImpl _value,
      $Res Function(_$StatisticsMKCChessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? columns = null,
  }) {
    return _then(_$StatisticsMKCChessResponseImpl(
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessRowItemDto>,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessColumnItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessResponseImpl implements _StatisticsMKCChessResponse {
  _$StatisticsMKCChessResponseImpl({required this.rows, required this.columns});

  factory _$StatisticsMKCChessResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessResponseImplFromJson(json);

  @override
  List<StatisticsMKCChessRowItemDto> rows;
  @override
  List<StatisticsMKCChessColumnItemDto> columns;

  @override
  String toString() {
    return 'StatisticsMKCChessResponse(rows: $rows, columns: $columns)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessResponseImplCopyWith<_$StatisticsMKCChessResponseImpl>
      get copyWith => __$$StatisticsMKCChessResponseImplCopyWithImpl<
          _$StatisticsMKCChessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessResponseImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessResponse
    implements StatisticsMKCChessResponse {
  factory _StatisticsMKCChessResponse(
          {required List<StatisticsMKCChessRowItemDto> rows,
          required List<StatisticsMKCChessColumnItemDto> columns}) =
      _$StatisticsMKCChessResponseImpl;

  factory _StatisticsMKCChessResponse.fromJson(Map<String, dynamic> json) =
      _$StatisticsMKCChessResponseImpl.fromJson;

  @override
  List<StatisticsMKCChessRowItemDto> get rows;
  set rows(List<StatisticsMKCChessRowItemDto> value);
  @override
  List<StatisticsMKCChessColumnItemDto> get columns;
  set columns(List<StatisticsMKCChessColumnItemDto> value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessResponseImplCopyWith<_$StatisticsMKCChessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatisticsMKCChessRowItemDto _$StatisticsMKCChessRowItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCChessRowItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessRowItemDto {
  StatisticsMKCChessRowTeamItemDto get team =>
      throw _privateConstructorUsedError;
  set team(StatisticsMKCChessRowTeamItemDto value) =>
      throw _privateConstructorUsedError;
  int get puckDifference => throw _privateConstructorUsedError;
  set puckDifference(int value) => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  set score(int value) => throw _privateConstructorUsedError;
  bool get isOurTeam => throw _privateConstructorUsedError;
  set isOurTeam(bool value) => throw _privateConstructorUsedError;
  Map<String, String>? get isNext => throw _privateConstructorUsedError;
  set isNext(Map<String, String>? value) => throw _privateConstructorUsedError;
  Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> get games =>
      throw _privateConstructorUsedError;
  set games(Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessRowItemDtoCopyWith<StatisticsMKCChessRowItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessRowItemDtoCopyWith<$Res> {
  factory $StatisticsMKCChessRowItemDtoCopyWith(
          StatisticsMKCChessRowItemDto value,
          $Res Function(StatisticsMKCChessRowItemDto) then) =
      _$StatisticsMKCChessRowItemDtoCopyWithImpl<$Res,
          StatisticsMKCChessRowItemDto>;
  @useResult
  $Res call(
      {StatisticsMKCChessRowTeamItemDto team,
      int puckDifference,
      int score,
      bool isOurTeam,
      Map<String, String>? isNext,
      Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> games});

  $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> get team;
}

/// @nodoc
class _$StatisticsMKCChessRowItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessRowItemDto>
    implements $StatisticsMKCChessRowItemDtoCopyWith<$Res> {
  _$StatisticsMKCChessRowItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? puckDifference = null,
    Object? score = null,
    Object? isOurTeam = null,
    Object? isNext = freezed,
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as StatisticsMKCChessRowTeamItemDto,
      puckDifference: null == puckDifference
          ? _value.puckDifference
          : puckDifference // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      isOurTeam: null == isOurTeam
          ? _value.isOurTeam
          : isOurTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      isNext: freezed == isNext
          ? _value.isNext
          : isNext // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> get team {
    return $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res>(_value.team,
        (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessRowItemDtoImplCopyWith<$Res>
    implements $StatisticsMKCChessRowItemDtoCopyWith<$Res> {
  factory _$$StatisticsMKCChessRowItemDtoImplCopyWith(
          _$StatisticsMKCChessRowItemDtoImpl value,
          $Res Function(_$StatisticsMKCChessRowItemDtoImpl) then) =
      __$$StatisticsMKCChessRowItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatisticsMKCChessRowTeamItemDto team,
      int puckDifference,
      int score,
      bool isOurTeam,
      Map<String, String>? isNext,
      Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> games});

  @override
  $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> get team;
}

/// @nodoc
class __$$StatisticsMKCChessRowItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessRowItemDtoCopyWithImpl<$Res,
        _$StatisticsMKCChessRowItemDtoImpl>
    implements _$$StatisticsMKCChessRowItemDtoImplCopyWith<$Res> {
  __$$StatisticsMKCChessRowItemDtoImplCopyWithImpl(
      _$StatisticsMKCChessRowItemDtoImpl _value,
      $Res Function(_$StatisticsMKCChessRowItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? puckDifference = null,
    Object? score = null,
    Object? isOurTeam = null,
    Object? isNext = freezed,
    Object? games = null,
  }) {
    return _then(_$StatisticsMKCChessRowItemDtoImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as StatisticsMKCChessRowTeamItemDto,
      puckDifference: null == puckDifference
          ? _value.puckDifference
          : puckDifference // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      isOurTeam: null == isOurTeam
          ? _value.isOurTeam
          : isOurTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      isNext: freezed == isNext
          ? _value.isNext
          : isNext // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessRowItemDtoImpl extends _StatisticsMKCChessRowItemDto {
  _$StatisticsMKCChessRowItemDtoImpl(
      {required this.team,
      required this.puckDifference,
      required this.score,
      required this.isOurTeam,
      required this.isNext,
      required this.games})
      : super._();

  factory _$StatisticsMKCChessRowItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessRowItemDtoImplFromJson(json);

  @override
  StatisticsMKCChessRowTeamItemDto team;
  @override
  int puckDifference;
  @override
  int score;
  @override
  bool isOurTeam;
  @override
  Map<String, String>? isNext;
  @override
  Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> games;

  @override
  String toString() {
    return 'StatisticsMKCChessRowItemDto(team: $team, puckDifference: $puckDifference, score: $score, isOurTeam: $isOurTeam, isNext: $isNext, games: $games)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessRowItemDtoImplCopyWith<
          _$StatisticsMKCChessRowItemDtoImpl>
      get copyWith => __$$StatisticsMKCChessRowItemDtoImplCopyWithImpl<
          _$StatisticsMKCChessRowItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessRowItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessRowItemDto
    extends StatisticsMKCChessRowItemDto {
  factory _StatisticsMKCChessRowItemDto(
          {required StatisticsMKCChessRowTeamItemDto team,
          required int puckDifference,
          required int score,
          required bool isOurTeam,
          required Map<String, String>? isNext,
          required Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> games}) =
      _$StatisticsMKCChessRowItemDtoImpl;
  _StatisticsMKCChessRowItemDto._() : super._();

  factory _StatisticsMKCChessRowItemDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsMKCChessRowItemDtoImpl.fromJson;

  @override
  StatisticsMKCChessRowTeamItemDto get team;
  set team(StatisticsMKCChessRowTeamItemDto value);
  @override
  int get puckDifference;
  set puckDifference(int value);
  @override
  int get score;
  set score(int value);
  @override
  bool get isOurTeam;
  set isOurTeam(bool value);
  @override
  Map<String, String>? get isNext;
  set isNext(Map<String, String>? value);
  @override
  Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> get games;
  set games(Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessRowItemDtoImplCopyWith<
          _$StatisticsMKCChessRowItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatisticsMKCChessRowTeamItemDto _$StatisticsMKCChessRowTeamItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCChessRowTeamItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessRowTeamItemDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get teamLogo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessRowTeamItemDtoCopyWith<StatisticsMKCChessRowTeamItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> {
  factory $StatisticsMKCChessRowTeamItemDtoCopyWith(
          StatisticsMKCChessRowTeamItemDto value,
          $Res Function(StatisticsMKCChessRowTeamItemDto) then) =
      _$StatisticsMKCChessRowTeamItemDtoCopyWithImpl<$Res,
          StatisticsMKCChessRowTeamItemDto>;
  @useResult
  $Res call({int id, String name, String teamLogo});
}

/// @nodoc
class _$StatisticsMKCChessRowTeamItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessRowTeamItemDto>
    implements $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> {
  _$StatisticsMKCChessRowTeamItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? teamLogo = null,
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
      teamLogo: null == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessRowTeamItemDtoImplCopyWith<$Res>
    implements $StatisticsMKCChessRowTeamItemDtoCopyWith<$Res> {
  factory _$$StatisticsMKCChessRowTeamItemDtoImplCopyWith(
          _$StatisticsMKCChessRowTeamItemDtoImpl value,
          $Res Function(_$StatisticsMKCChessRowTeamItemDtoImpl) then) =
      __$$StatisticsMKCChessRowTeamItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String teamLogo});
}

/// @nodoc
class __$$StatisticsMKCChessRowTeamItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessRowTeamItemDtoCopyWithImpl<$Res,
        _$StatisticsMKCChessRowTeamItemDtoImpl>
    implements _$$StatisticsMKCChessRowTeamItemDtoImplCopyWith<$Res> {
  __$$StatisticsMKCChessRowTeamItemDtoImplCopyWithImpl(
      _$StatisticsMKCChessRowTeamItemDtoImpl _value,
      $Res Function(_$StatisticsMKCChessRowTeamItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? teamLogo = null,
  }) {
    return _then(_$StatisticsMKCChessRowTeamItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      teamLogo: null == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessRowTeamItemDtoImpl
    implements _StatisticsMKCChessRowTeamItemDto {
  const _$StatisticsMKCChessRowTeamItemDtoImpl(
      {required this.id, required this.name, required this.teamLogo});

  factory _$StatisticsMKCChessRowTeamItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessRowTeamItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String teamLogo;

  @override
  String toString() {
    return 'StatisticsMKCChessRowTeamItemDto(id: $id, name: $name, teamLogo: $teamLogo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsMKCChessRowTeamItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.teamLogo, teamLogo) ||
                other.teamLogo == teamLogo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, teamLogo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessRowTeamItemDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamItemDtoImpl>
      get copyWith => __$$StatisticsMKCChessRowTeamItemDtoImplCopyWithImpl<
          _$StatisticsMKCChessRowTeamItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessRowTeamItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessRowTeamItemDto
    implements StatisticsMKCChessRowTeamItemDto {
  const factory _StatisticsMKCChessRowTeamItemDto(
      {required final int id,
      required final String name,
      required final String teamLogo}) = _$StatisticsMKCChessRowTeamItemDtoImpl;

  factory _StatisticsMKCChessRowTeamItemDto.fromJson(
          Map<String, dynamic> json) =
      _$StatisticsMKCChessRowTeamItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get teamLogo;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessRowTeamItemDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatisticsMKCChessRowTeamGamesMapItemDto
    _$StatisticsMKCChessRowTeamGamesMapItemDtoFromJson(
        Map<String, dynamic> json) {
  return _StatisticsMKCChessRowTeamGamesMapItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessRowTeamGamesMapItemDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<StatisticsMKCChessRowTeamGamesMapDataDto?>? get data =>
      throw _privateConstructorUsedError;
  String get underline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessRowTeamGamesMapItemDtoCopyWith<
          StatisticsMKCChessRowTeamGamesMapItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessRowTeamGamesMapItemDtoCopyWith<$Res> {
  factory $StatisticsMKCChessRowTeamGamesMapItemDtoCopyWith(
          StatisticsMKCChessRowTeamGamesMapItemDto value,
          $Res Function(StatisticsMKCChessRowTeamGamesMapItemDto) then) =
      _$StatisticsMKCChessRowTeamGamesMapItemDtoCopyWithImpl<$Res,
          StatisticsMKCChessRowTeamGamesMapItemDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data,
      String underline});
}

/// @nodoc
class _$StatisticsMKCChessRowTeamGamesMapItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessRowTeamGamesMapItemDto>
    implements $StatisticsMKCChessRowTeamGamesMapItemDtoCopyWith<$Res> {
  _$StatisticsMKCChessRowTeamGamesMapItemDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = freezed,
    Object? underline = null,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessRowTeamGamesMapDataDto?>?,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWith<$Res>
    implements $StatisticsMKCChessRowTeamGamesMapItemDtoCopyWith<$Res> {
  factory _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWith(
          _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl value,
          $Res Function(_$StatisticsMKCChessRowTeamGamesMapItemDtoImpl) then) =
      __$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data,
      String underline});
}

/// @nodoc
class __$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessRowTeamGamesMapItemDtoCopyWithImpl<$Res,
        _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl>
    implements _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWith<$Res> {
  __$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWithImpl(
      _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl _value,
      $Res Function(_$StatisticsMKCChessRowTeamGamesMapItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = freezed,
    Object? underline = null,
  }) {
    return _then(_$StatisticsMKCChessRowTeamGamesMapItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StatisticsMKCChessRowTeamGamesMapDataDto?>?,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl
    implements _StatisticsMKCChessRowTeamGamesMapItemDto {
  const _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl(
      {required this.id,
      required this.name,
      required final List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data,
      required this.underline})
      : _data = data;

  factory _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<StatisticsMKCChessRowTeamGamesMapDataDto?>? _data;
  @override
  List<StatisticsMKCChessRowTeamGamesMapDataDto?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String underline;

  @override
  String toString() {
    return 'StatisticsMKCChessRowTeamGamesMapItemDto(id: $id, name: $name, data: $data, underline: $underline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.underline, underline) ||
                other.underline == underline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_data), underline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl>
      get copyWith =>
          __$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWithImpl<
              _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessRowTeamGamesMapItemDto
    implements StatisticsMKCChessRowTeamGamesMapItemDto {
  const factory _StatisticsMKCChessRowTeamGamesMapItemDto(
          {required final int id,
          required final String name,
          required final List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data,
          required final String underline}) =
      _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl;

  factory _StatisticsMKCChessRowTeamGamesMapItemDto.fromJson(
          Map<String, dynamic> json) =
      _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<StatisticsMKCChessRowTeamGamesMapDataDto?>? get data;
  @override
  String get underline;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatisticsMKCChessRowTeamGamesMapDataDto
    _$StatisticsMKCChessRowTeamGamesMapDataDtoFromJson(
        Map<String, dynamic> json) {
  return _StatisticsMKCChessRowTeamGamesMapDataDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessRowTeamGamesMapDataDto {
  String get type => throw _privateConstructorUsedError;
  List<int> get score => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get techResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessRowTeamGamesMapDataDtoCopyWith<
          StatisticsMKCChessRowTeamGamesMapDataDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessRowTeamGamesMapDataDtoCopyWith<$Res> {
  factory $StatisticsMKCChessRowTeamGamesMapDataDtoCopyWith(
          StatisticsMKCChessRowTeamGamesMapDataDto value,
          $Res Function(StatisticsMKCChessRowTeamGamesMapDataDto) then) =
      _$StatisticsMKCChessRowTeamGamesMapDataDtoCopyWithImpl<$Res,
          StatisticsMKCChessRowTeamGamesMapDataDto>;
  @useResult
  $Res call({String type, List<int> score, String date, bool techResult});
}

/// @nodoc
class _$StatisticsMKCChessRowTeamGamesMapDataDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessRowTeamGamesMapDataDto>
    implements $StatisticsMKCChessRowTeamGamesMapDataDtoCopyWith<$Res> {
  _$StatisticsMKCChessRowTeamGamesMapDataDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? score = null,
    Object? date = null,
    Object? techResult = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<int>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      techResult: null == techResult
          ? _value.techResult
          : techResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWith<$Res>
    implements $StatisticsMKCChessRowTeamGamesMapDataDtoCopyWith<$Res> {
  factory _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWith(
          _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl value,
          $Res Function(_$StatisticsMKCChessRowTeamGamesMapDataDtoImpl) then) =
      __$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<int> score, String date, bool techResult});
}

/// @nodoc
class __$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessRowTeamGamesMapDataDtoCopyWithImpl<$Res,
        _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl>
    implements _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWith<$Res> {
  __$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWithImpl(
      _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl _value,
      $Res Function(_$StatisticsMKCChessRowTeamGamesMapDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? score = null,
    Object? date = null,
    Object? techResult = null,
  }) {
    return _then(_$StatisticsMKCChessRowTeamGamesMapDataDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<int>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      techResult: null == techResult
          ? _value.techResult
          : techResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl
    extends _StatisticsMKCChessRowTeamGamesMapDataDto {
  const _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl(
      {required this.type,
      required final List<int> score,
      required this.date,
      required this.techResult})
      : _score = score,
        super._();

  factory _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplFromJson(json);

  @override
  final String type;
  final List<int> _score;
  @override
  List<int> get score {
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_score);
  }

  @override
  final String date;
  @override
  final bool techResult;

  @override
  String toString() {
    return 'StatisticsMKCChessRowTeamGamesMapDataDto(type: $type, score: $score, date: $date, techResult: $techResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.techResult, techResult) ||
                other.techResult == techResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_score), date, techResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl>
      get copyWith =>
          __$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWithImpl<
              _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessRowTeamGamesMapDataDto
    extends StatisticsMKCChessRowTeamGamesMapDataDto {
  const factory _StatisticsMKCChessRowTeamGamesMapDataDto(
          {required final String type,
          required final List<int> score,
          required final String date,
          required final bool techResult}) =
      _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl;
  const _StatisticsMKCChessRowTeamGamesMapDataDto._() : super._();

  factory _StatisticsMKCChessRowTeamGamesMapDataDto.fromJson(
          Map<String, dynamic> json) =
      _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl.fromJson;

  @override
  String get type;
  @override
  List<int> get score;
  @override
  String get date;
  @override
  bool get techResult;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplCopyWith<
          _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatisticsMKCChessColumnItemDto _$StatisticsMKCChessColumnItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StatisticsMKCChessColumnItemDto.fromJson(json);
}

/// @nodoc
mixin _$StatisticsMKCChessColumnItemDto {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsMKCChessColumnItemDtoCopyWith<StatisticsMKCChessColumnItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsMKCChessColumnItemDtoCopyWith<$Res> {
  factory $StatisticsMKCChessColumnItemDtoCopyWith(
          StatisticsMKCChessColumnItemDto value,
          $Res Function(StatisticsMKCChessColumnItemDto) then) =
      _$StatisticsMKCChessColumnItemDtoCopyWithImpl<$Res,
          StatisticsMKCChessColumnItemDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StatisticsMKCChessColumnItemDtoCopyWithImpl<$Res,
        $Val extends StatisticsMKCChessColumnItemDto>
    implements $StatisticsMKCChessColumnItemDtoCopyWith<$Res> {
  _$StatisticsMKCChessColumnItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsMKCChessColumnItemDtoImplCopyWith<$Res>
    implements $StatisticsMKCChessColumnItemDtoCopyWith<$Res> {
  factory _$$StatisticsMKCChessColumnItemDtoImplCopyWith(
          _$StatisticsMKCChessColumnItemDtoImpl value,
          $Res Function(_$StatisticsMKCChessColumnItemDtoImpl) then) =
      __$$StatisticsMKCChessColumnItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$StatisticsMKCChessColumnItemDtoImplCopyWithImpl<$Res>
    extends _$StatisticsMKCChessColumnItemDtoCopyWithImpl<$Res,
        _$StatisticsMKCChessColumnItemDtoImpl>
    implements _$$StatisticsMKCChessColumnItemDtoImplCopyWith<$Res> {
  __$$StatisticsMKCChessColumnItemDtoImplCopyWithImpl(
      _$StatisticsMKCChessColumnItemDtoImpl _value,
      $Res Function(_$StatisticsMKCChessColumnItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$StatisticsMKCChessColumnItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsMKCChessColumnItemDtoImpl
    implements _StatisticsMKCChessColumnItemDto {
  _$StatisticsMKCChessColumnItemDtoImpl({required this.id, required this.name});

  factory _$StatisticsMKCChessColumnItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StatisticsMKCChessColumnItemDtoImplFromJson(json);

  @override
  int id;
  @override
  String name;

  @override
  String toString() {
    return 'StatisticsMKCChessColumnItemDto(id: $id, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsMKCChessColumnItemDtoImplCopyWith<
          _$StatisticsMKCChessColumnItemDtoImpl>
      get copyWith => __$$StatisticsMKCChessColumnItemDtoImplCopyWithImpl<
          _$StatisticsMKCChessColumnItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsMKCChessColumnItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StatisticsMKCChessColumnItemDto
    implements StatisticsMKCChessColumnItemDto {
  factory _StatisticsMKCChessColumnItemDto(
      {required int id,
      required String name}) = _$StatisticsMKCChessColumnItemDtoImpl;

  factory _StatisticsMKCChessColumnItemDto.fromJson(Map<String, dynamic> json) =
      _$StatisticsMKCChessColumnItemDtoImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsMKCChessColumnItemDtoImplCopyWith<
          _$StatisticsMKCChessColumnItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
