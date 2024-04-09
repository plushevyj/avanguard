// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faceoffs_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaceoffsPlayer _$FaceoffsPlayerFromJson(Map<String, dynamic> json) {
  return _FaceoffsPlayer.fromJson(json);
}

/// @nodoc
mixin _$FaceoffsPlayer {
  int get id => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;
  int get lost => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceoffsPlayerCopyWith<FaceoffsPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceoffsPlayerCopyWith<$Res> {
  factory $FaceoffsPlayerCopyWith(
          FaceoffsPlayer value, $Res Function(FaceoffsPlayer) then) =
      _$FaceoffsPlayerCopyWithImpl<$Res, FaceoffsPlayer>;
  @useResult
  $Res call(
      {int id,
      int win,
      int lost,
      int percent,
      String firstName,
      String lastName});
}

/// @nodoc
class _$FaceoffsPlayerCopyWithImpl<$Res, $Val extends FaceoffsPlayer>
    implements $FaceoffsPlayerCopyWith<$Res> {
  _$FaceoffsPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? win = null,
    Object? lost = null,
    Object? percent = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceoffsPlayerImplCopyWith<$Res>
    implements $FaceoffsPlayerCopyWith<$Res> {
  factory _$$FaceoffsPlayerImplCopyWith(_$FaceoffsPlayerImpl value,
          $Res Function(_$FaceoffsPlayerImpl) then) =
      __$$FaceoffsPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int win,
      int lost,
      int percent,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$FaceoffsPlayerImplCopyWithImpl<$Res>
    extends _$FaceoffsPlayerCopyWithImpl<$Res, _$FaceoffsPlayerImpl>
    implements _$$FaceoffsPlayerImplCopyWith<$Res> {
  __$$FaceoffsPlayerImplCopyWithImpl(
      _$FaceoffsPlayerImpl _value, $Res Function(_$FaceoffsPlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? win = null,
    Object? lost = null,
    Object? percent = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$FaceoffsPlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceoffsPlayerImpl implements _FaceoffsPlayer {
  const _$FaceoffsPlayerImpl(
      {required this.id,
      required this.win,
      required this.lost,
      required this.percent,
      required this.firstName,
      required this.lastName});

  factory _$FaceoffsPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceoffsPlayerImplFromJson(json);

  @override
  final int id;
  @override
  final int win;
  @override
  final int lost;
  @override
  final int percent;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'FaceoffsPlayer(id: $id, win: $win, lost: $lost, percent: $percent, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceoffsPlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.lost, lost) || other.lost == lost) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, win, lost, percent, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceoffsPlayerImplCopyWith<_$FaceoffsPlayerImpl> get copyWith =>
      __$$FaceoffsPlayerImplCopyWithImpl<_$FaceoffsPlayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceoffsPlayerImplToJson(
      this,
    );
  }
}

abstract class _FaceoffsPlayer implements FaceoffsPlayer {
  const factory _FaceoffsPlayer(
      {required final int id,
      required final int win,
      required final int lost,
      required final int percent,
      required final String firstName,
      required final String lastName}) = _$FaceoffsPlayerImpl;

  factory _FaceoffsPlayer.fromJson(Map<String, dynamic> json) =
      _$FaceoffsPlayerImpl.fromJson;

  @override
  int get id;
  @override
  int get win;
  @override
  int get lost;
  @override
  int get percent;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$FaceoffsPlayerImplCopyWith<_$FaceoffsPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
