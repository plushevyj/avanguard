// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faceoffs_players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaceoffsPlayers _$FaceoffsPlayersFromJson(Map<String, dynamic> json) {
  return _FaceoffsPlayers.fromJson(json);
}

/// @nodoc
mixin _$FaceoffsPlayers {
  List<FaceoffsPlayer> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceoffsPlayersCopyWith<FaceoffsPlayers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceoffsPlayersCopyWith<$Res> {
  factory $FaceoffsPlayersCopyWith(
          FaceoffsPlayers value, $Res Function(FaceoffsPlayers) then) =
      _$FaceoffsPlayersCopyWithImpl<$Res, FaceoffsPlayers>;
  @useResult
  $Res call({List<FaceoffsPlayer> players});
}

/// @nodoc
class _$FaceoffsPlayersCopyWithImpl<$Res, $Val extends FaceoffsPlayers>
    implements $FaceoffsPlayersCopyWith<$Res> {
  _$FaceoffsPlayersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<FaceoffsPlayer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceoffsPlayersImplCopyWith<$Res>
    implements $FaceoffsPlayersCopyWith<$Res> {
  factory _$$FaceoffsPlayersImplCopyWith(_$FaceoffsPlayersImpl value,
          $Res Function(_$FaceoffsPlayersImpl) then) =
      __$$FaceoffsPlayersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FaceoffsPlayer> players});
}

/// @nodoc
class __$$FaceoffsPlayersImplCopyWithImpl<$Res>
    extends _$FaceoffsPlayersCopyWithImpl<$Res, _$FaceoffsPlayersImpl>
    implements _$$FaceoffsPlayersImplCopyWith<$Res> {
  __$$FaceoffsPlayersImplCopyWithImpl(
      _$FaceoffsPlayersImpl _value, $Res Function(_$FaceoffsPlayersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_$FaceoffsPlayersImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<FaceoffsPlayer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceoffsPlayersImpl implements _FaceoffsPlayers {
  const _$FaceoffsPlayersImpl({required final List<FaceoffsPlayer> players})
      : _players = players;

  factory _$FaceoffsPlayersImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceoffsPlayersImplFromJson(json);

  final List<FaceoffsPlayer> _players;
  @override
  List<FaceoffsPlayer> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'FaceoffsPlayers(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceoffsPlayersImpl &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceoffsPlayersImplCopyWith<_$FaceoffsPlayersImpl> get copyWith =>
      __$$FaceoffsPlayersImplCopyWithImpl<_$FaceoffsPlayersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceoffsPlayersImplToJson(
      this,
    );
  }
}

abstract class _FaceoffsPlayers implements FaceoffsPlayers {
  const factory _FaceoffsPlayers(
      {required final List<FaceoffsPlayer> players}) = _$FaceoffsPlayersImpl;

  factory _FaceoffsPlayers.fromJson(Map<String, dynamic> json) =
      _$FaceoffsPlayersImpl.fromJson;

  @override
  List<FaceoffsPlayer> get players;
  @override
  @JsonKey(ignore: true)
  _$$FaceoffsPlayersImplCopyWith<_$FaceoffsPlayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
