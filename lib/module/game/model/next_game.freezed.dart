// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NextGame _$NextGameFromJson(Map<String, dynamic> json) {
  return _NextGame.fromJson(json);
}

/// @nodoc
mixin _$NextGame {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  DateTime get date => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get awayTeamName => throw _privateConstructorUsedError;
  String get homeTeamName => throw _privateConstructorUsedError;
  String get gameType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextGameCopyWith<NextGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextGameCopyWith<$Res> {
  factory $NextGameCopyWith(NextGame value, $Res Function(NextGame) then) =
      _$NextGameCopyWithImpl<$Res, NextGame>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      DateTime date,
      String groupId,
      String awayTeamName,
      String homeTeamName,
      String gameType});
}

/// @nodoc
class _$NextGameCopyWithImpl<$Res, $Val extends NextGame>
    implements $NextGameCopyWith<$Res> {
  _$NextGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? groupId = null,
    Object? awayTeamName = null,
    Object? homeTeamName = null,
    Object? gameType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextGameImplCopyWith<$Res>
    implements $NextGameCopyWith<$Res> {
  factory _$$NextGameImplCopyWith(
          _$NextGameImpl value, $Res Function(_$NextGameImpl) then) =
      __$$NextGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      DateTime date,
      String groupId,
      String awayTeamName,
      String homeTeamName,
      String gameType});
}

/// @nodoc
class __$$NextGameImplCopyWithImpl<$Res>
    extends _$NextGameCopyWithImpl<$Res, _$NextGameImpl>
    implements _$$NextGameImplCopyWith<$Res> {
  __$$NextGameImplCopyWithImpl(
      _$NextGameImpl _value, $Res Function(_$NextGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? groupId = null,
    Object? awayTeamName = null,
    Object? homeTeamName = null,
    Object? gameType = null,
  }) {
    return _then(_$NextGameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextGameImpl implements _NextGame {
  const _$NextGameImpl(
      {required this.id,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      required this.date,
      required this.groupId,
      required this.awayTeamName,
      required this.homeTeamName,
      required this.gameType});

  factory _$NextGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextGameImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  final DateTime date;
  @override
  final String groupId;
  @override
  final String awayTeamName;
  @override
  final String homeTeamName;
  @override
  final String gameType;

  @override
  String toString() {
    return 'NextGame(id: $id, date: $date, groupId: $groupId, awayTeamName: $awayTeamName, homeTeamName: $homeTeamName, gameType: $gameType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextGameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.awayTeamName, awayTeamName) ||
                other.awayTeamName == awayTeamName) &&
            (identical(other.homeTeamName, homeTeamName) ||
                other.homeTeamName == homeTeamName) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, groupId, awayTeamName, homeTeamName, gameType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextGameImplCopyWith<_$NextGameImpl> get copyWith =>
      __$$NextGameImplCopyWithImpl<_$NextGameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextGameImplToJson(
      this,
    );
  }
}

abstract class _NextGame implements NextGame {
  const factory _NextGame(
      {required final String id,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      required final DateTime date,
      required final String groupId,
      required final String awayTeamName,
      required final String homeTeamName,
      required final String gameType}) = _$NextGameImpl;

  factory _NextGame.fromJson(Map<String, dynamic> json) =
      _$NextGameImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  DateTime get date;
  @override
  String get groupId;
  @override
  String get awayTeamName;
  @override
  String get homeTeamName;
  @override
  String get gameType;
  @override
  @JsonKey(ignore: true)
  _$$NextGameImplCopyWith<_$NextGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
