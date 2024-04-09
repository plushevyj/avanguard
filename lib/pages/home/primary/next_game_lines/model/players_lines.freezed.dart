// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'players_lines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayersLines _$PlayersLinesFromJson(Map<String, dynamic> json) {
  return _PlayersLines.fromJson(json);
}

/// @nodoc
mixin _$PlayersLines {
// required String objectId,
// required bool isActual,
// required bool isFavorites,
// String? favoritesName,
// required String teamId,
// required DateTime createdAt,
  List<Line?>? get playersLines => throw _privateConstructorUsedError;
  List<LinePlayer?>? get goaltendersLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayersLinesCopyWith<PlayersLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayersLinesCopyWith<$Res> {
  factory $PlayersLinesCopyWith(
          PlayersLines value, $Res Function(PlayersLines) then) =
      _$PlayersLinesCopyWithImpl<$Res, PlayersLines>;
  @useResult
  $Res call({List<Line?>? playersLines, List<LinePlayer?>? goaltendersLine});
}

/// @nodoc
class _$PlayersLinesCopyWithImpl<$Res, $Val extends PlayersLines>
    implements $PlayersLinesCopyWith<$Res> {
  _$PlayersLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playersLines = freezed,
    Object? goaltendersLine = freezed,
  }) {
    return _then(_value.copyWith(
      playersLines: freezed == playersLines
          ? _value.playersLines
          : playersLines // ignore: cast_nullable_to_non_nullable
              as List<Line?>?,
      goaltendersLine: freezed == goaltendersLine
          ? _value.goaltendersLine
          : goaltendersLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayersLinesImplCopyWith<$Res>
    implements $PlayersLinesCopyWith<$Res> {
  factory _$$PlayersLinesImplCopyWith(
          _$PlayersLinesImpl value, $Res Function(_$PlayersLinesImpl) then) =
      __$$PlayersLinesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Line?>? playersLines, List<LinePlayer?>? goaltendersLine});
}

/// @nodoc
class __$$PlayersLinesImplCopyWithImpl<$Res>
    extends _$PlayersLinesCopyWithImpl<$Res, _$PlayersLinesImpl>
    implements _$$PlayersLinesImplCopyWith<$Res> {
  __$$PlayersLinesImplCopyWithImpl(
      _$PlayersLinesImpl _value, $Res Function(_$PlayersLinesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playersLines = freezed,
    Object? goaltendersLine = freezed,
  }) {
    return _then(_$PlayersLinesImpl(
      playersLines: freezed == playersLines
          ? _value._playersLines
          : playersLines // ignore: cast_nullable_to_non_nullable
              as List<Line?>?,
      goaltendersLine: freezed == goaltendersLine
          ? _value._goaltendersLine
          : goaltendersLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayersLinesImpl extends _PlayersLines {
  const _$PlayersLinesImpl(
      {required final List<Line?>? playersLines,
      required final List<LinePlayer?>? goaltendersLine})
      : _playersLines = playersLines,
        _goaltendersLine = goaltendersLine,
        super._();

  factory _$PlayersLinesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayersLinesImplFromJson(json);

// required String objectId,
// required bool isActual,
// required bool isFavorites,
// String? favoritesName,
// required String teamId,
// required DateTime createdAt,
  final List<Line?>? _playersLines;
// required String objectId,
// required bool isActual,
// required bool isFavorites,
// String? favoritesName,
// required String teamId,
// required DateTime createdAt,
  @override
  List<Line?>? get playersLines {
    final value = _playersLines;
    if (value == null) return null;
    if (_playersLines is EqualUnmodifiableListView) return _playersLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LinePlayer?>? _goaltendersLine;
  @override
  List<LinePlayer?>? get goaltendersLine {
    final value = _goaltendersLine;
    if (value == null) return null;
    if (_goaltendersLine is EqualUnmodifiableListView) return _goaltendersLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlayersLines(playersLines: $playersLines, goaltendersLine: $goaltendersLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayersLinesImpl &&
            const DeepCollectionEquality()
                .equals(other._playersLines, _playersLines) &&
            const DeepCollectionEquality()
                .equals(other._goaltendersLine, _goaltendersLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_playersLines),
      const DeepCollectionEquality().hash(_goaltendersLine));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayersLinesImplCopyWith<_$PlayersLinesImpl> get copyWith =>
      __$$PlayersLinesImplCopyWithImpl<_$PlayersLinesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayersLinesImplToJson(
      this,
    );
  }
}

abstract class _PlayersLines extends PlayersLines {
  const factory _PlayersLines(
      {required final List<Line?>? playersLines,
      required final List<LinePlayer?>? goaltendersLine}) = _$PlayersLinesImpl;
  const _PlayersLines._() : super._();

  factory _PlayersLines.fromJson(Map<String, dynamic> json) =
      _$PlayersLinesImpl.fromJson;

  @override // required String objectId,
// required bool isActual,
// required bool isFavorites,
// String? favoritesName,
// required String teamId,
// required DateTime createdAt,
  List<Line?>? get playersLines;
  @override
  List<LinePlayer?>? get goaltendersLine;
  @override
  @JsonKey(ignore: true)
  _$$PlayersLinesImplCopyWith<_$PlayersLinesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Line _$LineFromJson(Map<String, dynamic> json) {
  return _Line.fromJson(json);
}

/// @nodoc
mixin _$Line {
  String? get name => throw _privateConstructorUsedError;
  List<LinePlayer?>? get wingersLine => throw _privateConstructorUsedError;
  List<LinePlayer?>? get defensemansLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineCopyWith<Line> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineCopyWith<$Res> {
  factory $LineCopyWith(Line value, $Res Function(Line) then) =
      _$LineCopyWithImpl<$Res, Line>;
  @useResult
  $Res call(
      {String? name,
      List<LinePlayer?>? wingersLine,
      List<LinePlayer?>? defensemansLine});
}

/// @nodoc
class _$LineCopyWithImpl<$Res, $Val extends Line>
    implements $LineCopyWith<$Res> {
  _$LineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? wingersLine = freezed,
    Object? defensemansLine = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      wingersLine: freezed == wingersLine
          ? _value.wingersLine
          : wingersLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
      defensemansLine: freezed == defensemansLine
          ? _value.defensemansLine
          : defensemansLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineImplCopyWith<$Res> implements $LineCopyWith<$Res> {
  factory _$$LineImplCopyWith(
          _$LineImpl value, $Res Function(_$LineImpl) then) =
      __$$LineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<LinePlayer?>? wingersLine,
      List<LinePlayer?>? defensemansLine});
}

/// @nodoc
class __$$LineImplCopyWithImpl<$Res>
    extends _$LineCopyWithImpl<$Res, _$LineImpl>
    implements _$$LineImplCopyWith<$Res> {
  __$$LineImplCopyWithImpl(_$LineImpl _value, $Res Function(_$LineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? wingersLine = freezed,
    Object? defensemansLine = freezed,
  }) {
    return _then(_$LineImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      wingersLine: freezed == wingersLine
          ? _value._wingersLine
          : wingersLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
      defensemansLine: freezed == defensemansLine
          ? _value._defensemansLine
          : defensemansLine // ignore: cast_nullable_to_non_nullable
              as List<LinePlayer?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LineImpl implements _Line {
  const _$LineImpl(
      {required this.name,
      required final List<LinePlayer?>? wingersLine,
      required final List<LinePlayer?>? defensemansLine})
      : _wingersLine = wingersLine,
        _defensemansLine = defensemansLine;

  factory _$LineImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineImplFromJson(json);

  @override
  final String? name;
  final List<LinePlayer?>? _wingersLine;
  @override
  List<LinePlayer?>? get wingersLine {
    final value = _wingersLine;
    if (value == null) return null;
    if (_wingersLine is EqualUnmodifiableListView) return _wingersLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LinePlayer?>? _defensemansLine;
  @override
  List<LinePlayer?>? get defensemansLine {
    final value = _defensemansLine;
    if (value == null) return null;
    if (_defensemansLine is EqualUnmodifiableListView) return _defensemansLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Line(name: $name, wingersLine: $wingersLine, defensemansLine: $defensemansLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._wingersLine, _wingersLine) &&
            const DeepCollectionEquality()
                .equals(other._defensemansLine, _defensemansLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_wingersLine),
      const DeepCollectionEquality().hash(_defensemansLine));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      __$$LineImplCopyWithImpl<_$LineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineImplToJson(
      this,
    );
  }
}

abstract class _Line implements Line {
  const factory _Line(
      {required final String? name,
      required final List<LinePlayer?>? wingersLine,
      required final List<LinePlayer?>? defensemansLine}) = _$LineImpl;

  factory _Line.fromJson(Map<String, dynamic> json) = _$LineImpl.fromJson;

  @override
  String? get name;
  @override
  List<LinePlayer?>? get wingersLine;
  @override
  List<LinePlayer?>? get defensemansLine;
  @override
  @JsonKey(ignore: true)
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinePlayer _$LinePlayerFromJson(Map<String, dynamic> json) {
  return _LinePlayer.fromJson(json);
}

/// @nodoc
mixin _$LinePlayer {
  String? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get hand => throw _privateConstructorUsedError;
  String? get playerNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinePlayerCopyWith<LinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinePlayerCopyWith<$Res> {
  factory $LinePlayerCopyWith(
          LinePlayer value, $Res Function(LinePlayer) then) =
      _$LinePlayerCopyWithImpl<$Res, LinePlayer>;
  @useResult
  $Res call(
      {String? id,
      String? firstName,
      String? avatar,
      String? lastName,
      String? status,
      String? hand,
      String? playerNumber});
}

/// @nodoc
class _$LinePlayerCopyWithImpl<$Res, $Val extends LinePlayer>
    implements $LinePlayerCopyWith<$Res> {
  _$LinePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? avatar = freezed,
    Object? lastName = freezed,
    Object? status = freezed,
    Object? hand = freezed,
    Object? playerNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hand: freezed == hand
          ? _value.hand
          : hand // ignore: cast_nullable_to_non_nullable
              as String?,
      playerNumber: freezed == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinePlayerImplCopyWith<$Res>
    implements $LinePlayerCopyWith<$Res> {
  factory _$$LinePlayerImplCopyWith(
          _$LinePlayerImpl value, $Res Function(_$LinePlayerImpl) then) =
      __$$LinePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? firstName,
      String? avatar,
      String? lastName,
      String? status,
      String? hand,
      String? playerNumber});
}

/// @nodoc
class __$$LinePlayerImplCopyWithImpl<$Res>
    extends _$LinePlayerCopyWithImpl<$Res, _$LinePlayerImpl>
    implements _$$LinePlayerImplCopyWith<$Res> {
  __$$LinePlayerImplCopyWithImpl(
      _$LinePlayerImpl _value, $Res Function(_$LinePlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? avatar = freezed,
    Object? lastName = freezed,
    Object? status = freezed,
    Object? hand = freezed,
    Object? playerNumber = freezed,
  }) {
    return _then(_$LinePlayerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hand: freezed == hand
          ? _value.hand
          : hand // ignore: cast_nullable_to_non_nullable
              as String?,
      playerNumber: freezed == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinePlayerImpl implements _LinePlayer {
  const _$LinePlayerImpl(
      {required this.id,
      required this.firstName,
      required this.avatar,
      required this.lastName,
      required this.status,
      required this.hand,
      required this.playerNumber});

  factory _$LinePlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinePlayerImplFromJson(json);

  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final String? avatar;
  @override
  final String? lastName;
  @override
  final String? status;
  @override
  final String? hand;
  @override
  final String? playerNumber;

  @override
  String toString() {
    return 'LinePlayer(id: $id, firstName: $firstName, avatar: $avatar, lastName: $lastName, status: $status, hand: $hand, playerNumber: $playerNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinePlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hand, hand) || other.hand == hand) &&
            (identical(other.playerNumber, playerNumber) ||
                other.playerNumber == playerNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, avatar, lastName, status, hand, playerNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinePlayerImplCopyWith<_$LinePlayerImpl> get copyWith =>
      __$$LinePlayerImplCopyWithImpl<_$LinePlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinePlayerImplToJson(
      this,
    );
  }
}

abstract class _LinePlayer implements LinePlayer {
  const factory _LinePlayer(
      {required final String? id,
      required final String? firstName,
      required final String? avatar,
      required final String? lastName,
      required final String? status,
      required final String? hand,
      required final String? playerNumber}) = _$LinePlayerImpl;

  factory _LinePlayer.fromJson(Map<String, dynamic> json) =
      _$LinePlayerImpl.fromJson;

  @override
  String? get id;
  @override
  String? get firstName;
  @override
  String? get avatar;
  @override
  String? get lastName;
  @override
  String? get status;
  @override
  String? get hand;
  @override
  String? get playerNumber;
  @override
  @JsonKey(ignore: true)
  _$$LinePlayerImplCopyWith<_$LinePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
