// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_action_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameActionDto _$GameActionDtoFromJson(Map<String, dynamic> json) {
  return _GameActionDto.fromJson(json);
}

/// @nodoc
mixin _$GameActionDto {
  String get name =>
      throw _privateConstructorUsedError; // @Default('-') String engName,
  String get engNameShort =>
      throw _privateConstructorUsedError; // required GameActionNameDto type,
  String get playerName => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  double get posY => throw _privateConstructorUsedError;
  double get posX => throw _privateConstructorUsedError;
  double get opponentPosY => throw _privateConstructorUsedError;
  double get opponentPosX =>
      throw _privateConstructorUsedError; // @Default(.0) double goalSpotX,
// @Default(.0) double goalSpotY,
// @Default('-') String importance,
// @Default('-') String plrs,
  bool? get weAtHome => throw _privateConstructorUsedError;
  bool? get isOur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameActionDtoCopyWith<GameActionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameActionDtoCopyWith<$Res> {
  factory $GameActionDtoCopyWith(
          GameActionDto value, $Res Function(GameActionDto) then) =
      _$GameActionDtoCopyWithImpl<$Res, GameActionDto>;
  @useResult
  $Res call(
      {String name,
      String engNameShort,
      String playerName,
      String time,
      double posY,
      double posX,
      double opponentPosY,
      double opponentPosX,
      bool? weAtHome,
      bool? isOur});
}

/// @nodoc
class _$GameActionDtoCopyWithImpl<$Res, $Val extends GameActionDto>
    implements $GameActionDtoCopyWith<$Res> {
  _$GameActionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engNameShort = null,
    Object? playerName = null,
    Object? time = null,
    Object? posY = null,
    Object? posX = null,
    Object? opponentPosY = null,
    Object? opponentPosX = null,
    Object? weAtHome = freezed,
    Object? isOur = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      posY: null == posY
          ? _value.posY
          : posY // ignore: cast_nullable_to_non_nullable
              as double,
      posX: null == posX
          ? _value.posX
          : posX // ignore: cast_nullable_to_non_nullable
              as double,
      opponentPosY: null == opponentPosY
          ? _value.opponentPosY
          : opponentPosY // ignore: cast_nullable_to_non_nullable
              as double,
      opponentPosX: null == opponentPosX
          ? _value.opponentPosX
          : opponentPosX // ignore: cast_nullable_to_non_nullable
              as double,
      weAtHome: freezed == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOur: freezed == isOur
          ? _value.isOur
          : isOur // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameActionDtoImplCopyWith<$Res>
    implements $GameActionDtoCopyWith<$Res> {
  factory _$$GameActionDtoImplCopyWith(
          _$GameActionDtoImpl value, $Res Function(_$GameActionDtoImpl) then) =
      __$$GameActionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String engNameShort,
      String playerName,
      String time,
      double posY,
      double posX,
      double opponentPosY,
      double opponentPosX,
      bool? weAtHome,
      bool? isOur});
}

/// @nodoc
class __$$GameActionDtoImplCopyWithImpl<$Res>
    extends _$GameActionDtoCopyWithImpl<$Res, _$GameActionDtoImpl>
    implements _$$GameActionDtoImplCopyWith<$Res> {
  __$$GameActionDtoImplCopyWithImpl(
      _$GameActionDtoImpl _value, $Res Function(_$GameActionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engNameShort = null,
    Object? playerName = null,
    Object? time = null,
    Object? posY = null,
    Object? posX = null,
    Object? opponentPosY = null,
    Object? opponentPosX = null,
    Object? weAtHome = freezed,
    Object? isOur = freezed,
  }) {
    return _then(_$GameActionDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      posY: null == posY
          ? _value.posY
          : posY // ignore: cast_nullable_to_non_nullable
              as double,
      posX: null == posX
          ? _value.posX
          : posX // ignore: cast_nullable_to_non_nullable
              as double,
      opponentPosY: null == opponentPosY
          ? _value.opponentPosY
          : opponentPosY // ignore: cast_nullable_to_non_nullable
              as double,
      opponentPosX: null == opponentPosX
          ? _value.opponentPosX
          : opponentPosX // ignore: cast_nullable_to_non_nullable
              as double,
      weAtHome: freezed == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOur: freezed == isOur
          ? _value.isOur
          : isOur // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameActionDtoImpl extends _GameActionDto {
  const _$GameActionDtoImpl(
      {this.name = '-',
      this.engNameShort = '-',
      this.playerName = '-',
      this.time = '-',
      this.posY = .0,
      this.posX = .0,
      this.opponentPosY = .0,
      this.opponentPosX = .0,
      this.weAtHome,
      this.isOur})
      : super._();

  factory _$GameActionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameActionDtoImplFromJson(json);

  @override
  @JsonKey()
  final String name;
// @Default('-') String engName,
  @override
  @JsonKey()
  final String engNameShort;
// required GameActionNameDto type,
  @override
  @JsonKey()
  final String playerName;
  @override
  @JsonKey()
  final String time;
  @override
  @JsonKey()
  final double posY;
  @override
  @JsonKey()
  final double posX;
  @override
  @JsonKey()
  final double opponentPosY;
  @override
  @JsonKey()
  final double opponentPosX;
// @Default(.0) double goalSpotX,
// @Default(.0) double goalSpotY,
// @Default('-') String importance,
// @Default('-') String plrs,
  @override
  final bool? weAtHome;
  @override
  final bool? isOur;

  @override
  String toString() {
    return 'GameActionDto(name: $name, engNameShort: $engNameShort, playerName: $playerName, time: $time, posY: $posY, posX: $posX, opponentPosY: $opponentPosY, opponentPosX: $opponentPosX, weAtHome: $weAtHome, isOur: $isOur)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameActionDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engNameShort, engNameShort) ||
                other.engNameShort == engNameShort) &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.posY, posY) || other.posY == posY) &&
            (identical(other.posX, posX) || other.posX == posX) &&
            (identical(other.opponentPosY, opponentPosY) ||
                other.opponentPosY == opponentPosY) &&
            (identical(other.opponentPosX, opponentPosX) ||
                other.opponentPosX == opponentPosX) &&
            (identical(other.weAtHome, weAtHome) ||
                other.weAtHome == weAtHome) &&
            (identical(other.isOur, isOur) || other.isOur == isOur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, engNameShort, playerName,
      time, posY, posX, opponentPosY, opponentPosX, weAtHome, isOur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameActionDtoImplCopyWith<_$GameActionDtoImpl> get copyWith =>
      __$$GameActionDtoImplCopyWithImpl<_$GameActionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameActionDtoImplToJson(
      this,
    );
  }
}

abstract class _GameActionDto extends GameActionDto {
  const factory _GameActionDto(
      {final String name,
      final String engNameShort,
      final String playerName,
      final String time,
      final double posY,
      final double posX,
      final double opponentPosY,
      final double opponentPosX,
      final bool? weAtHome,
      final bool? isOur}) = _$GameActionDtoImpl;
  const _GameActionDto._() : super._();

  factory _GameActionDto.fromJson(Map<String, dynamic> json) =
      _$GameActionDtoImpl.fromJson;

  @override
  String get name;
  @override // @Default('-') String engName,
  String get engNameShort;
  @override // required GameActionNameDto type,
  String get playerName;
  @override
  String get time;
  @override
  double get posY;
  @override
  double get posX;
  @override
  double get opponentPosY;
  @override
  double get opponentPosX;
  @override // @Default(.0) double goalSpotX,
// @Default(.0) double goalSpotY,
// @Default('-') String importance,
// @Default('-') String plrs,
  bool? get weAtHome;
  @override
  bool? get isOur;
  @override
  @JsonKey(ignore: true)
  _$$GameActionDtoImplCopyWith<_$GameActionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameActionNameDto _$GameActionNameDtoFromJson(Map<String, dynamic> json) {
  return _GameActionNameDto.fromJson(json);
}

/// @nodoc
mixin _$GameActionNameDto {
  String get name => throw _privateConstructorUsedError;
  String get engName => throw _privateConstructorUsedError;
  String get engNameShort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameActionNameDtoCopyWith<GameActionNameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameActionNameDtoCopyWith<$Res> {
  factory $GameActionNameDtoCopyWith(
          GameActionNameDto value, $Res Function(GameActionNameDto) then) =
      _$GameActionNameDtoCopyWithImpl<$Res, GameActionNameDto>;
  @useResult
  $Res call({String name, String engName, String engNameShort});
}

/// @nodoc
class _$GameActionNameDtoCopyWithImpl<$Res, $Val extends GameActionNameDto>
    implements $GameActionNameDtoCopyWith<$Res> {
  _$GameActionNameDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engName = null,
    Object? engNameShort = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameActionNameDtoImplCopyWith<$Res>
    implements $GameActionNameDtoCopyWith<$Res> {
  factory _$$GameActionNameDtoImplCopyWith(_$GameActionNameDtoImpl value,
          $Res Function(_$GameActionNameDtoImpl) then) =
      __$$GameActionNameDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String engName, String engNameShort});
}

/// @nodoc
class __$$GameActionNameDtoImplCopyWithImpl<$Res>
    extends _$GameActionNameDtoCopyWithImpl<$Res, _$GameActionNameDtoImpl>
    implements _$$GameActionNameDtoImplCopyWith<$Res> {
  __$$GameActionNameDtoImplCopyWithImpl(_$GameActionNameDtoImpl _value,
      $Res Function(_$GameActionNameDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engName = null,
    Object? engNameShort = null,
  }) {
    return _then(_$GameActionNameDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      engNameShort: null == engNameShort
          ? _value.engNameShort
          : engNameShort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameActionNameDtoImpl extends _GameActionNameDto {
  const _$GameActionNameDtoImpl(
      {this.name = '-', this.engName = '-', this.engNameShort = '-'})
      : super._();

  factory _$GameActionNameDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameActionNameDtoImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String engName;
  @override
  @JsonKey()
  final String engNameShort;

  @override
  String toString() {
    return 'GameActionNameDto(name: $name, engName: $engName, engNameShort: $engNameShort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameActionNameDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.engNameShort, engNameShort) ||
                other.engNameShort == engNameShort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, engName, engNameShort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameActionNameDtoImplCopyWith<_$GameActionNameDtoImpl> get copyWith =>
      __$$GameActionNameDtoImplCopyWithImpl<_$GameActionNameDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameActionNameDtoImplToJson(
      this,
    );
  }
}

abstract class _GameActionNameDto extends GameActionNameDto {
  const factory _GameActionNameDto(
      {final String name,
      final String engName,
      final String engNameShort}) = _$GameActionNameDtoImpl;
  const _GameActionNameDto._() : super._();

  factory _GameActionNameDto.fromJson(Map<String, dynamic> json) =
      _$GameActionNameDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get engName;
  @override
  String get engNameShort;
  @override
  @JsonKey(ignore: true)
  _$$GameActionNameDtoImplCopyWith<_$GameActionNameDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoOffsets _$VideoOffsetsFromJson(Map<String, dynamic> json) {
  return _VideoOffsets.fromJson(json);
}

/// @nodoc
mixin _$VideoOffsets {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoOffsetsCopyWith<VideoOffsets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoOffsetsCopyWith<$Res> {
  factory $VideoOffsetsCopyWith(
          VideoOffsets value, $Res Function(VideoOffsets) then) =
      _$VideoOffsetsCopyWithImpl<$Res, VideoOffsets>;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$VideoOffsetsCopyWithImpl<$Res, $Val extends VideoOffsets>
    implements $VideoOffsetsCopyWith<$Res> {
  _$VideoOffsetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoOffsetsImplCopyWith<$Res>
    implements $VideoOffsetsCopyWith<$Res> {
  factory _$$VideoOffsetsImplCopyWith(
          _$VideoOffsetsImpl value, $Res Function(_$VideoOffsetsImpl) then) =
      __$$VideoOffsetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$$VideoOffsetsImplCopyWithImpl<$Res>
    extends _$VideoOffsetsCopyWithImpl<$Res, _$VideoOffsetsImpl>
    implements _$$VideoOffsetsImplCopyWith<$Res> {
  __$$VideoOffsetsImplCopyWithImpl(
      _$VideoOffsetsImpl _value, $Res Function(_$VideoOffsetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$VideoOffsetsImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoOffsetsImpl extends _VideoOffsets {
  const _$VideoOffsetsImpl({this.start = 0, this.end = 0}) : super._();

  factory _$VideoOffsetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoOffsetsImplFromJson(json);

  @override
  @JsonKey()
  final int start;
  @override
  @JsonKey()
  final int end;

  @override
  String toString() {
    return 'VideoOffsets(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoOffsetsImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoOffsetsImplCopyWith<_$VideoOffsetsImpl> get copyWith =>
      __$$VideoOffsetsImplCopyWithImpl<_$VideoOffsetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoOffsetsImplToJson(
      this,
    );
  }
}

abstract class _VideoOffsets extends VideoOffsets {
  const factory _VideoOffsets({final int start, final int end}) =
      _$VideoOffsetsImpl;
  const _VideoOffsets._() : super._();

  factory _VideoOffsets.fromJson(Map<String, dynamic> json) =
      _$VideoOffsetsImpl.fromJson;

  @override
  int get start;
  @override
  int get end;
  @override
  @JsonKey(ignore: true)
  _$$VideoOffsetsImplCopyWith<_$VideoOffsetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
