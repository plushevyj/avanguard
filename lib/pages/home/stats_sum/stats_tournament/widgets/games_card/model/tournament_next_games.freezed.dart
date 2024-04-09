// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_next_games.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MKCTablePageNextGameResponseDto _$MKCTablePageNextGameResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _MKCTablePageNextGameResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePageNextGameResponseDto {
  @JsonKey(defaultValue: [])
  List<MKCTablePageNextGameItemDto> get games =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePageNextGameResponseDtoCopyWith<MKCTablePageNextGameResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePageNextGameResponseDtoCopyWith<$Res> {
  factory $MKCTablePageNextGameResponseDtoCopyWith(
          MKCTablePageNextGameResponseDto value,
          $Res Function(MKCTablePageNextGameResponseDto) then) =
      _$MKCTablePageNextGameResponseDtoCopyWithImpl<$Res,
          MKCTablePageNextGameResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<MKCTablePageNextGameItemDto> games});
}

/// @nodoc
class _$MKCTablePageNextGameResponseDtoCopyWithImpl<$Res,
        $Val extends MKCTablePageNextGameResponseDto>
    implements $MKCTablePageNextGameResponseDtoCopyWith<$Res> {
  _$MKCTablePageNextGameResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<MKCTablePageNextGameItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MKCTablePageNextGameResponseDtoImplCopyWith<$Res>
    implements $MKCTablePageNextGameResponseDtoCopyWith<$Res> {
  factory _$$MKCTablePageNextGameResponseDtoImplCopyWith(
          _$MKCTablePageNextGameResponseDtoImpl value,
          $Res Function(_$MKCTablePageNextGameResponseDtoImpl) then) =
      __$$MKCTablePageNextGameResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<MKCTablePageNextGameItemDto> games});
}

/// @nodoc
class __$$MKCTablePageNextGameResponseDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePageNextGameResponseDtoCopyWithImpl<$Res,
        _$MKCTablePageNextGameResponseDtoImpl>
    implements _$$MKCTablePageNextGameResponseDtoImplCopyWith<$Res> {
  __$$MKCTablePageNextGameResponseDtoImplCopyWithImpl(
      _$MKCTablePageNextGameResponseDtoImpl _value,
      $Res Function(_$MKCTablePageNextGameResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_$MKCTablePageNextGameResponseDtoImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<MKCTablePageNextGameItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePageNextGameResponseDtoImpl
    extends _MKCTablePageNextGameResponseDto {
  const _$MKCTablePageNextGameResponseDtoImpl(
      {@JsonKey(defaultValue: [])
      required final List<MKCTablePageNextGameItemDto> games})
      : _games = games,
        super._();

  factory _$MKCTablePageNextGameResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePageNextGameResponseDtoImplFromJson(json);

  final List<MKCTablePageNextGameItemDto> _games;
  @override
  @JsonKey(defaultValue: [])
  List<MKCTablePageNextGameItemDto> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'MKCTablePageNextGameResponseDto(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePageNextGameResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePageNextGameResponseDtoImplCopyWith<
          _$MKCTablePageNextGameResponseDtoImpl>
      get copyWith => __$$MKCTablePageNextGameResponseDtoImplCopyWithImpl<
          _$MKCTablePageNextGameResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePageNextGameResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePageNextGameResponseDto
    extends MKCTablePageNextGameResponseDto {
  const factory _MKCTablePageNextGameResponseDto(
          {@JsonKey(defaultValue: [])
          required final List<MKCTablePageNextGameItemDto> games}) =
      _$MKCTablePageNextGameResponseDtoImpl;
  const _MKCTablePageNextGameResponseDto._() : super._();

  factory _MKCTablePageNextGameResponseDto.fromJson(Map<String, dynamic> json) =
      _$MKCTablePageNextGameResponseDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<MKCTablePageNextGameItemDto> get games;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePageNextGameResponseDtoImplCopyWith<
          _$MKCTablePageNextGameResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MKCTablePageNextGameItemDto _$MKCTablePageNextGameItemDtoFromJson(
    Map<String, dynamic> json) {
  return _MKCTablePageNextGameItemDto.fromJson(json);
}

/// @nodoc
mixin _$MKCTablePageNextGameItemDto {
  String get homeTeamName =>
      throw _privateConstructorUsedError; // required String homeTeamAge,
  String get homeTeamLogo => throw _privateConstructorUsedError;
  String get awayTeamName =>
      throw _privateConstructorUsedError; // required String awayTeamAge,
  String get awayTeamLogo => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MKCTablePageNextGameItemDtoCopyWith<MKCTablePageNextGameItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MKCTablePageNextGameItemDtoCopyWith<$Res> {
  factory $MKCTablePageNextGameItemDtoCopyWith(
          MKCTablePageNextGameItemDto value,
          $Res Function(MKCTablePageNextGameItemDto) then) =
      _$MKCTablePageNextGameItemDtoCopyWithImpl<$Res,
          MKCTablePageNextGameItemDto>;
  @useResult
  $Res call(
      {String homeTeamName,
      String homeTeamLogo,
      String awayTeamName,
      String awayTeamLogo,
      String date,
      String? time});
}

/// @nodoc
class _$MKCTablePageNextGameItemDtoCopyWithImpl<$Res,
        $Val extends MKCTablePageNextGameItemDto>
    implements $MKCTablePageNextGameItemDtoCopyWith<$Res> {
  _$MKCTablePageNextGameItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeamName = null,
    Object? homeTeamLogo = null,
    Object? awayTeamName = null,
    Object? awayTeamLogo = null,
    Object? date = null,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MKCTablePageNextGameItemDtoImplCopyWith<$Res>
    implements $MKCTablePageNextGameItemDtoCopyWith<$Res> {
  factory _$$MKCTablePageNextGameItemDtoImplCopyWith(
          _$MKCTablePageNextGameItemDtoImpl value,
          $Res Function(_$MKCTablePageNextGameItemDtoImpl) then) =
      __$$MKCTablePageNextGameItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String homeTeamName,
      String homeTeamLogo,
      String awayTeamName,
      String awayTeamLogo,
      String date,
      String? time});
}

/// @nodoc
class __$$MKCTablePageNextGameItemDtoImplCopyWithImpl<$Res>
    extends _$MKCTablePageNextGameItemDtoCopyWithImpl<$Res,
        _$MKCTablePageNextGameItemDtoImpl>
    implements _$$MKCTablePageNextGameItemDtoImplCopyWith<$Res> {
  __$$MKCTablePageNextGameItemDtoImplCopyWithImpl(
      _$MKCTablePageNextGameItemDtoImpl _value,
      $Res Function(_$MKCTablePageNextGameItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeamName = null,
    Object? homeTeamLogo = null,
    Object? awayTeamName = null,
    Object? awayTeamLogo = null,
    Object? date = null,
    Object? time = freezed,
  }) {
    return _then(_$MKCTablePageNextGameItemDtoImpl(
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamLogo: null == homeTeamLogo
          ? _value.homeTeamLogo
          : homeTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamLogo: null == awayTeamLogo
          ? _value.awayTeamLogo
          : awayTeamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MKCTablePageNextGameItemDtoImpl extends _MKCTablePageNextGameItemDto {
  const _$MKCTablePageNextGameItemDtoImpl(
      {required this.homeTeamName,
      required this.homeTeamLogo,
      required this.awayTeamName,
      required this.awayTeamLogo,
      required this.date,
      this.time})
      : super._();

  factory _$MKCTablePageNextGameItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MKCTablePageNextGameItemDtoImplFromJson(json);

  @override
  final String homeTeamName;
// required String homeTeamAge,
  @override
  final String homeTeamLogo;
  @override
  final String awayTeamName;
// required String awayTeamAge,
  @override
  final String awayTeamLogo;
  @override
  final String date;
  @override
  final String? time;

  @override
  String toString() {
    return 'MKCTablePageNextGameItemDto(homeTeamName: $homeTeamName, homeTeamLogo: $homeTeamLogo, awayTeamName: $awayTeamName, awayTeamLogo: $awayTeamLogo, date: $date, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MKCTablePageNextGameItemDtoImpl &&
            (identical(other.homeTeamName, homeTeamName) ||
                other.homeTeamName == homeTeamName) &&
            (identical(other.homeTeamLogo, homeTeamLogo) ||
                other.homeTeamLogo == homeTeamLogo) &&
            (identical(other.awayTeamName, awayTeamName) ||
                other.awayTeamName == awayTeamName) &&
            (identical(other.awayTeamLogo, awayTeamLogo) ||
                other.awayTeamLogo == awayTeamLogo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, homeTeamName, homeTeamLogo,
      awayTeamName, awayTeamLogo, date, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MKCTablePageNextGameItemDtoImplCopyWith<_$MKCTablePageNextGameItemDtoImpl>
      get copyWith => __$$MKCTablePageNextGameItemDtoImplCopyWithImpl<
          _$MKCTablePageNextGameItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MKCTablePageNextGameItemDtoImplToJson(
      this,
    );
  }
}

abstract class _MKCTablePageNextGameItemDto
    extends MKCTablePageNextGameItemDto {
  const factory _MKCTablePageNextGameItemDto(
      {required final String homeTeamName,
      required final String homeTeamLogo,
      required final String awayTeamName,
      required final String awayTeamLogo,
      required final String date,
      final String? time}) = _$MKCTablePageNextGameItemDtoImpl;
  const _MKCTablePageNextGameItemDto._() : super._();

  factory _MKCTablePageNextGameItemDto.fromJson(Map<String, dynamic> json) =
      _$MKCTablePageNextGameItemDtoImpl.fromJson;

  @override
  String get homeTeamName;
  @override // required String homeTeamAge,
  String get homeTeamLogo;
  @override
  String get awayTeamName;
  @override // required String awayTeamAge,
  String get awayTeamLogo;
  @override
  String get date;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$MKCTablePageNextGameItemDtoImplCopyWith<_$MKCTablePageNextGameItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
