// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerDiary _$PlayerDiaryFromJson(Map<String, dynamic> json) {
  return _PlayerDiary.fromJson(json);
}

/// @nodoc
mixin _$PlayerDiary {
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  Morning? get morning => throw _privateConstructorUsedError;
  TrainingGroup? get trainingGroup => throw _privateConstructorUsedError;
  TrainingIndividual? get trainingIndividual =>
      throw _privateConstructorUsedError;
  Game? get game => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerDiaryCopyWith<PlayerDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDiaryCopyWith<$Res> {
  factory $PlayerDiaryCopyWith(
          PlayerDiary value, $Res Function(PlayerDiary) then) =
      _$PlayerDiaryCopyWithImpl<$Res, PlayerDiary>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String? userId,
      String? id,
      Morning? morning,
      TrainingGroup? trainingGroup,
      TrainingIndividual? trainingIndividual,
      Game? game});

  $MorningCopyWith<$Res>? get morning;
  $TrainingGroupCopyWith<$Res>? get trainingGroup;
  $TrainingIndividualCopyWith<$Res>? get trainingIndividual;
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class _$PlayerDiaryCopyWithImpl<$Res, $Val extends PlayerDiary>
    implements $PlayerDiaryCopyWith<$Res> {
  _$PlayerDiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? userId = freezed,
    Object? id = freezed,
    Object? morning = freezed,
    Object? trainingGroup = freezed,
    Object? trainingIndividual = freezed,
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as Morning?,
      trainingGroup: freezed == trainingGroup
          ? _value.trainingGroup
          : trainingGroup // ignore: cast_nullable_to_non_nullable
              as TrainingGroup?,
      trainingIndividual: freezed == trainingIndividual
          ? _value.trainingIndividual
          : trainingIndividual // ignore: cast_nullable_to_non_nullable
              as TrainingIndividual?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MorningCopyWith<$Res>? get morning {
    if (_value.morning == null) {
      return null;
    }

    return $MorningCopyWith<$Res>(_value.morning!, (value) {
      return _then(_value.copyWith(morning: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingGroupCopyWith<$Res>? get trainingGroup {
    if (_value.trainingGroup == null) {
      return null;
    }

    return $TrainingGroupCopyWith<$Res>(_value.trainingGroup!, (value) {
      return _then(_value.copyWith(trainingGroup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingIndividualCopyWith<$Res>? get trainingIndividual {
    if (_value.trainingIndividual == null) {
      return null;
    }

    return $TrainingIndividualCopyWith<$Res>(_value.trainingIndividual!,
        (value) {
      return _then(_value.copyWith(trainingIndividual: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerDiaryImplCopyWith<$Res>
    implements $PlayerDiaryCopyWith<$Res> {
  factory _$$PlayerDiaryImplCopyWith(
          _$PlayerDiaryImpl value, $Res Function(_$PlayerDiaryImpl) then) =
      __$$PlayerDiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime date,
      String? userId,
      String? id,
      Morning? morning,
      TrainingGroup? trainingGroup,
      TrainingIndividual? trainingIndividual,
      Game? game});

  @override
  $MorningCopyWith<$Res>? get morning;
  @override
  $TrainingGroupCopyWith<$Res>? get trainingGroup;
  @override
  $TrainingIndividualCopyWith<$Res>? get trainingIndividual;
  @override
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$$PlayerDiaryImplCopyWithImpl<$Res>
    extends _$PlayerDiaryCopyWithImpl<$Res, _$PlayerDiaryImpl>
    implements _$$PlayerDiaryImplCopyWith<$Res> {
  __$$PlayerDiaryImplCopyWithImpl(
      _$PlayerDiaryImpl _value, $Res Function(_$PlayerDiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? userId = freezed,
    Object? id = freezed,
    Object? morning = freezed,
    Object? trainingGroup = freezed,
    Object? trainingIndividual = freezed,
    Object? game = freezed,
  }) {
    return _then(_$PlayerDiaryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as Morning?,
      trainingGroup: freezed == trainingGroup
          ? _value.trainingGroup
          : trainingGroup // ignore: cast_nullable_to_non_nullable
              as TrainingGroup?,
      trainingIndividual: freezed == trainingIndividual
          ? _value.trainingIndividual
          : trainingIndividual // ignore: cast_nullable_to_non_nullable
              as TrainingIndividual?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerDiaryImpl implements _PlayerDiary {
  const _$PlayerDiaryImpl(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required this.date,
      this.userId,
      this.id,
      this.morning,
      this.trainingGroup,
      this.trainingIndividual,
      this.game});

  factory _$PlayerDiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerDiaryImplFromJson(json);

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  final DateTime date;
  @override
  final String? userId;
  @override
  final String? id;
  @override
  final Morning? morning;
  @override
  final TrainingGroup? trainingGroup;
  @override
  final TrainingIndividual? trainingIndividual;
  @override
  final Game? game;

  @override
  String toString() {
    return 'PlayerDiary(date: $date, userId: $userId, id: $id, morning: $morning, trainingGroup: $trainingGroup, trainingIndividual: $trainingIndividual, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDiaryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.morning, morning) || other.morning == morning) &&
            (identical(other.trainingGroup, trainingGroup) ||
                other.trainingGroup == trainingGroup) &&
            (identical(other.trainingIndividual, trainingIndividual) ||
                other.trainingIndividual == trainingIndividual) &&
            (identical(other.game, game) || other.game == game));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, userId, id, morning,
      trainingGroup, trainingIndividual, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDiaryImplCopyWith<_$PlayerDiaryImpl> get copyWith =>
      __$$PlayerDiaryImplCopyWithImpl<_$PlayerDiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerDiaryImplToJson(
      this,
    );
  }
}

abstract class _PlayerDiary implements PlayerDiary {
  const factory _PlayerDiary(
      {@JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      required final DateTime date,
      final String? userId,
      final String? id,
      final Morning? morning,
      final TrainingGroup? trainingGroup,
      final TrainingIndividual? trainingIndividual,
      final Game? game}) = _$PlayerDiaryImpl;

  factory _PlayerDiary.fromJson(Map<String, dynamic> json) =
      _$PlayerDiaryImpl.fromJson;

  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime get date;
  @override
  String? get userId;
  @override
  String? get id;
  @override
  Morning? get morning;
  @override
  TrainingGroup? get trainingGroup;
  @override
  TrainingIndividual? get trainingIndividual;
  @override
  Game? get game;
  @override
  @JsonKey(ignore: true)
  _$$PlayerDiaryImplCopyWith<_$PlayerDiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Morning _$MorningFromJson(Map<String, dynamic> json) {
  return _Morning.fromJson(json);
}

/// @nodoc
mixin _$Morning {
  String? get id => throw _privateConstructorUsedError;
  int? get sleep => throw _privateConstructorUsedError;
  int? get mood => throw _privateConstructorUsedError;
  int? get willToTraining => throw _privateConstructorUsedError;
  bool get isDayOff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MorningCopyWith<Morning> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MorningCopyWith<$Res> {
  factory $MorningCopyWith(Morning value, $Res Function(Morning) then) =
      _$MorningCopyWithImpl<$Res, Morning>;
  @useResult
  $Res call(
      {String? id, int? sleep, int? mood, int? willToTraining, bool isDayOff});
}

/// @nodoc
class _$MorningCopyWithImpl<$Res, $Val extends Morning>
    implements $MorningCopyWith<$Res> {
  _$MorningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sleep = freezed,
    Object? mood = freezed,
    Object? willToTraining = freezed,
    Object? isDayOff = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sleep: freezed == sleep
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as int?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int?,
      willToTraining: freezed == willToTraining
          ? _value.willToTraining
          : willToTraining // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MorningImplCopyWith<$Res> implements $MorningCopyWith<$Res> {
  factory _$$MorningImplCopyWith(
          _$MorningImpl value, $Res Function(_$MorningImpl) then) =
      __$$MorningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, int? sleep, int? mood, int? willToTraining, bool isDayOff});
}

/// @nodoc
class __$$MorningImplCopyWithImpl<$Res>
    extends _$MorningCopyWithImpl<$Res, _$MorningImpl>
    implements _$$MorningImplCopyWith<$Res> {
  __$$MorningImplCopyWithImpl(
      _$MorningImpl _value, $Res Function(_$MorningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sleep = freezed,
    Object? mood = freezed,
    Object? willToTraining = freezed,
    Object? isDayOff = null,
  }) {
    return _then(_$MorningImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sleep: freezed == sleep
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as int?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int?,
      willToTraining: freezed == willToTraining
          ? _value.willToTraining
          : willToTraining // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MorningImpl implements _Morning {
  const _$MorningImpl(
      {this.id,
      this.sleep,
      this.mood,
      this.willToTraining,
      this.isDayOff = false});

  factory _$MorningImpl.fromJson(Map<String, dynamic> json) =>
      _$$MorningImplFromJson(json);

  @override
  final String? id;
  @override
  final int? sleep;
  @override
  final int? mood;
  @override
  final int? willToTraining;
  @override
  @JsonKey()
  final bool isDayOff;

  @override
  String toString() {
    return 'Morning(id: $id, sleep: $sleep, mood: $mood, willToTraining: $willToTraining, isDayOff: $isDayOff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MorningImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sleep, sleep) || other.sleep == sleep) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.willToTraining, willToTraining) ||
                other.willToTraining == willToTraining) &&
            (identical(other.isDayOff, isDayOff) ||
                other.isDayOff == isDayOff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sleep, mood, willToTraining, isDayOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MorningImplCopyWith<_$MorningImpl> get copyWith =>
      __$$MorningImplCopyWithImpl<_$MorningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MorningImplToJson(
      this,
    );
  }
}

abstract class _Morning implements Morning {
  const factory _Morning(
      {final String? id,
      final int? sleep,
      final int? mood,
      final int? willToTraining,
      final bool isDayOff}) = _$MorningImpl;

  factory _Morning.fromJson(Map<String, dynamic> json) = _$MorningImpl.fromJson;

  @override
  String? get id;
  @override
  int? get sleep;
  @override
  int? get mood;
  @override
  int? get willToTraining;
  @override
  bool get isDayOff;
  @override
  @JsonKey(ignore: true)
  _$$MorningImplCopyWith<_$MorningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingGroup _$TrainingGroupFromJson(Map<String, dynamic> json) {
  return _TrainingGroup.fromJson(json);
}

/// @nodoc
mixin _$TrainingGroup {
  String? get id => throw _privateConstructorUsedError;
  int? get gymMood => throw _privateConstructorUsedError;
  int? get gymHealth => throw _privateConstructorUsedError;
  int? get iceMood => throw _privateConstructorUsedError;
  int? get iceHealth => throw _privateConstructorUsedError;
  int? get skillMood => throw _privateConstructorUsedError;
  int? get skillHealth => throw _privateConstructorUsedError;
  bool get isDayOff => throw _privateConstructorUsedError;
  List<Comment?>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingGroupCopyWith<TrainingGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingGroupCopyWith<$Res> {
  factory $TrainingGroupCopyWith(
          TrainingGroup value, $Res Function(TrainingGroup) then) =
      _$TrainingGroupCopyWithImpl<$Res, TrainingGroup>;
  @useResult
  $Res call(
      {String? id,
      int? gymMood,
      int? gymHealth,
      int? iceMood,
      int? iceHealth,
      int? skillMood,
      int? skillHealth,
      bool isDayOff,
      List<Comment?>? comments});
}

/// @nodoc
class _$TrainingGroupCopyWithImpl<$Res, $Val extends TrainingGroup>
    implements $TrainingGroupCopyWith<$Res> {
  _$TrainingGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gymMood = freezed,
    Object? gymHealth = freezed,
    Object? iceMood = freezed,
    Object? iceHealth = freezed,
    Object? skillMood = freezed,
    Object? skillHealth = freezed,
    Object? isDayOff = null,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      gymMood: freezed == gymMood
          ? _value.gymMood
          : gymMood // ignore: cast_nullable_to_non_nullable
              as int?,
      gymHealth: freezed == gymHealth
          ? _value.gymHealth
          : gymHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      iceMood: freezed == iceMood
          ? _value.iceMood
          : iceMood // ignore: cast_nullable_to_non_nullable
              as int?,
      iceHealth: freezed == iceHealth
          ? _value.iceHealth
          : iceHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      skillMood: freezed == skillMood
          ? _value.skillMood
          : skillMood // ignore: cast_nullable_to_non_nullable
              as int?,
      skillHealth: freezed == skillHealth
          ? _value.skillHealth
          : skillHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingGroupImplCopyWith<$Res>
    implements $TrainingGroupCopyWith<$Res> {
  factory _$$TrainingGroupImplCopyWith(
          _$TrainingGroupImpl value, $Res Function(_$TrainingGroupImpl) then) =
      __$$TrainingGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? gymMood,
      int? gymHealth,
      int? iceMood,
      int? iceHealth,
      int? skillMood,
      int? skillHealth,
      bool isDayOff,
      List<Comment?>? comments});
}

/// @nodoc
class __$$TrainingGroupImplCopyWithImpl<$Res>
    extends _$TrainingGroupCopyWithImpl<$Res, _$TrainingGroupImpl>
    implements _$$TrainingGroupImplCopyWith<$Res> {
  __$$TrainingGroupImplCopyWithImpl(
      _$TrainingGroupImpl _value, $Res Function(_$TrainingGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gymMood = freezed,
    Object? gymHealth = freezed,
    Object? iceMood = freezed,
    Object? iceHealth = freezed,
    Object? skillMood = freezed,
    Object? skillHealth = freezed,
    Object? isDayOff = null,
    Object? comments = freezed,
  }) {
    return _then(_$TrainingGroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      gymMood: freezed == gymMood
          ? _value.gymMood
          : gymMood // ignore: cast_nullable_to_non_nullable
              as int?,
      gymHealth: freezed == gymHealth
          ? _value.gymHealth
          : gymHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      iceMood: freezed == iceMood
          ? _value.iceMood
          : iceMood // ignore: cast_nullable_to_non_nullable
              as int?,
      iceHealth: freezed == iceHealth
          ? _value.iceHealth
          : iceHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      skillMood: freezed == skillMood
          ? _value.skillMood
          : skillMood // ignore: cast_nullable_to_non_nullable
              as int?,
      skillHealth: freezed == skillHealth
          ? _value.skillHealth
          : skillHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingGroupImpl implements _TrainingGroup {
  const _$TrainingGroupImpl(
      {this.id,
      this.gymMood,
      this.gymHealth,
      this.iceMood,
      this.iceHealth,
      this.skillMood,
      this.skillHealth,
      this.isDayOff = false,
      final List<Comment?>? comments})
      : _comments = comments;

  factory _$TrainingGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingGroupImplFromJson(json);

  @override
  final String? id;
  @override
  final int? gymMood;
  @override
  final int? gymHealth;
  @override
  final int? iceMood;
  @override
  final int? iceHealth;
  @override
  final int? skillMood;
  @override
  final int? skillHealth;
  @override
  @JsonKey()
  final bool isDayOff;
  final List<Comment?>? _comments;
  @override
  List<Comment?>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrainingGroup(id: $id, gymMood: $gymMood, gymHealth: $gymHealth, iceMood: $iceMood, iceHealth: $iceHealth, skillMood: $skillMood, skillHealth: $skillHealth, isDayOff: $isDayOff, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gymMood, gymMood) || other.gymMood == gymMood) &&
            (identical(other.gymHealth, gymHealth) ||
                other.gymHealth == gymHealth) &&
            (identical(other.iceMood, iceMood) || other.iceMood == iceMood) &&
            (identical(other.iceHealth, iceHealth) ||
                other.iceHealth == iceHealth) &&
            (identical(other.skillMood, skillMood) ||
                other.skillMood == skillMood) &&
            (identical(other.skillHealth, skillHealth) ||
                other.skillHealth == skillHealth) &&
            (identical(other.isDayOff, isDayOff) ||
                other.isDayOff == isDayOff) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      gymMood,
      gymHealth,
      iceMood,
      iceHealth,
      skillMood,
      skillHealth,
      isDayOff,
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingGroupImplCopyWith<_$TrainingGroupImpl> get copyWith =>
      __$$TrainingGroupImplCopyWithImpl<_$TrainingGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingGroupImplToJson(
      this,
    );
  }
}

abstract class _TrainingGroup implements TrainingGroup {
  const factory _TrainingGroup(
      {final String? id,
      final int? gymMood,
      final int? gymHealth,
      final int? iceMood,
      final int? iceHealth,
      final int? skillMood,
      final int? skillHealth,
      final bool isDayOff,
      final List<Comment?>? comments}) = _$TrainingGroupImpl;

  factory _TrainingGroup.fromJson(Map<String, dynamic> json) =
      _$TrainingGroupImpl.fromJson;

  @override
  String? get id;
  @override
  int? get gymMood;
  @override
  int? get gymHealth;
  @override
  int? get iceMood;
  @override
  int? get iceHealth;
  @override
  int? get skillMood;
  @override
  int? get skillHealth;
  @override
  bool get isDayOff;
  @override
  List<Comment?>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$TrainingGroupImplCopyWith<_$TrainingGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingIndividual _$TrainingIndividualFromJson(Map<String, dynamic> json) {
  return _TrainingIndividual.fromJson(json);
}

/// @nodoc
mixin _$TrainingIndividual {
  String? get id => throw _privateConstructorUsedError;
  int? get gymMood => throw _privateConstructorUsedError;
  int? get gymHealth => throw _privateConstructorUsedError;
  int? get iceMood => throw _privateConstructorUsedError;
  int? get iceHealth => throw _privateConstructorUsedError;
  int? get skillMood => throw _privateConstructorUsedError;
  int? get skillHealth => throw _privateConstructorUsedError;
  bool get isDayOff => throw _privateConstructorUsedError;
  List<Comment?>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingIndividualCopyWith<TrainingIndividual> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingIndividualCopyWith<$Res> {
  factory $TrainingIndividualCopyWith(
          TrainingIndividual value, $Res Function(TrainingIndividual) then) =
      _$TrainingIndividualCopyWithImpl<$Res, TrainingIndividual>;
  @useResult
  $Res call(
      {String? id,
      int? gymMood,
      int? gymHealth,
      int? iceMood,
      int? iceHealth,
      int? skillMood,
      int? skillHealth,
      bool isDayOff,
      List<Comment?>? comments});
}

/// @nodoc
class _$TrainingIndividualCopyWithImpl<$Res, $Val extends TrainingIndividual>
    implements $TrainingIndividualCopyWith<$Res> {
  _$TrainingIndividualCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gymMood = freezed,
    Object? gymHealth = freezed,
    Object? iceMood = freezed,
    Object? iceHealth = freezed,
    Object? skillMood = freezed,
    Object? skillHealth = freezed,
    Object? isDayOff = null,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      gymMood: freezed == gymMood
          ? _value.gymMood
          : gymMood // ignore: cast_nullable_to_non_nullable
              as int?,
      gymHealth: freezed == gymHealth
          ? _value.gymHealth
          : gymHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      iceMood: freezed == iceMood
          ? _value.iceMood
          : iceMood // ignore: cast_nullable_to_non_nullable
              as int?,
      iceHealth: freezed == iceHealth
          ? _value.iceHealth
          : iceHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      skillMood: freezed == skillMood
          ? _value.skillMood
          : skillMood // ignore: cast_nullable_to_non_nullable
              as int?,
      skillHealth: freezed == skillHealth
          ? _value.skillHealth
          : skillHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingIndividualImplCopyWith<$Res>
    implements $TrainingIndividualCopyWith<$Res> {
  factory _$$TrainingIndividualImplCopyWith(_$TrainingIndividualImpl value,
          $Res Function(_$TrainingIndividualImpl) then) =
      __$$TrainingIndividualImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? gymMood,
      int? gymHealth,
      int? iceMood,
      int? iceHealth,
      int? skillMood,
      int? skillHealth,
      bool isDayOff,
      List<Comment?>? comments});
}

/// @nodoc
class __$$TrainingIndividualImplCopyWithImpl<$Res>
    extends _$TrainingIndividualCopyWithImpl<$Res, _$TrainingIndividualImpl>
    implements _$$TrainingIndividualImplCopyWith<$Res> {
  __$$TrainingIndividualImplCopyWithImpl(_$TrainingIndividualImpl _value,
      $Res Function(_$TrainingIndividualImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gymMood = freezed,
    Object? gymHealth = freezed,
    Object? iceMood = freezed,
    Object? iceHealth = freezed,
    Object? skillMood = freezed,
    Object? skillHealth = freezed,
    Object? isDayOff = null,
    Object? comments = freezed,
  }) {
    return _then(_$TrainingIndividualImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      gymMood: freezed == gymMood
          ? _value.gymMood
          : gymMood // ignore: cast_nullable_to_non_nullable
              as int?,
      gymHealth: freezed == gymHealth
          ? _value.gymHealth
          : gymHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      iceMood: freezed == iceMood
          ? _value.iceMood
          : iceMood // ignore: cast_nullable_to_non_nullable
              as int?,
      iceHealth: freezed == iceHealth
          ? _value.iceHealth
          : iceHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      skillMood: freezed == skillMood
          ? _value.skillMood
          : skillMood // ignore: cast_nullable_to_non_nullable
              as int?,
      skillHealth: freezed == skillHealth
          ? _value.skillHealth
          : skillHealth // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingIndividualImpl implements _TrainingIndividual {
  const _$TrainingIndividualImpl(
      {this.id,
      this.gymMood,
      this.gymHealth,
      this.iceMood,
      this.iceHealth,
      this.skillMood,
      this.skillHealth,
      this.isDayOff = false,
      final List<Comment?>? comments})
      : _comments = comments;

  factory _$TrainingIndividualImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingIndividualImplFromJson(json);

  @override
  final String? id;
  @override
  final int? gymMood;
  @override
  final int? gymHealth;
  @override
  final int? iceMood;
  @override
  final int? iceHealth;
  @override
  final int? skillMood;
  @override
  final int? skillHealth;
  @override
  @JsonKey()
  final bool isDayOff;
  final List<Comment?>? _comments;
  @override
  List<Comment?>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrainingIndividual(id: $id, gymMood: $gymMood, gymHealth: $gymHealth, iceMood: $iceMood, iceHealth: $iceHealth, skillMood: $skillMood, skillHealth: $skillHealth, isDayOff: $isDayOff, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingIndividualImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gymMood, gymMood) || other.gymMood == gymMood) &&
            (identical(other.gymHealth, gymHealth) ||
                other.gymHealth == gymHealth) &&
            (identical(other.iceMood, iceMood) || other.iceMood == iceMood) &&
            (identical(other.iceHealth, iceHealth) ||
                other.iceHealth == iceHealth) &&
            (identical(other.skillMood, skillMood) ||
                other.skillMood == skillMood) &&
            (identical(other.skillHealth, skillHealth) ||
                other.skillHealth == skillHealth) &&
            (identical(other.isDayOff, isDayOff) ||
                other.isDayOff == isDayOff) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      gymMood,
      gymHealth,
      iceMood,
      iceHealth,
      skillMood,
      skillHealth,
      isDayOff,
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingIndividualImplCopyWith<_$TrainingIndividualImpl> get copyWith =>
      __$$TrainingIndividualImplCopyWithImpl<_$TrainingIndividualImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingIndividualImplToJson(
      this,
    );
  }
}

abstract class _TrainingIndividual implements TrainingIndividual {
  const factory _TrainingIndividual(
      {final String? id,
      final int? gymMood,
      final int? gymHealth,
      final int? iceMood,
      final int? iceHealth,
      final int? skillMood,
      final int? skillHealth,
      final bool isDayOff,
      final List<Comment?>? comments}) = _$TrainingIndividualImpl;

  factory _TrainingIndividual.fromJson(Map<String, dynamic> json) =
      _$TrainingIndividualImpl.fromJson;

  @override
  String? get id;
  @override
  int? get gymMood;
  @override
  int? get gymHealth;
  @override
  int? get iceMood;
  @override
  int? get iceHealth;
  @override
  int? get skillMood;
  @override
  int? get skillHealth;
  @override
  bool get isDayOff;
  @override
  List<Comment?>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$TrainingIndividualImplCopyWith<_$TrainingIndividualImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String? get id => throw _privateConstructorUsedError;
  int? get activity => throw _privateConstructorUsedError;
  int? get stress => throw _privateConstructorUsedError;
  int? get health => throw _privateConstructorUsedError;
  int? get attention => throw _privateConstructorUsedError;
  @JsonKey(name: 'fellingIceAndGoal')
  int? get feelingIceAndGoal => throw _privateConstructorUsedError;
  @JsonKey(name: 'comunicationWithTrainer')
  int? get communicationWithTrainer => throw _privateConstructorUsedError;
  int? get selfScore => throw _privateConstructorUsedError;
  bool get isDayOff => throw _privateConstructorUsedError;

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
      {String? id,
      int? activity,
      int? stress,
      int? health,
      int? attention,
      @JsonKey(name: 'fellingIceAndGoal') int? feelingIceAndGoal,
      @JsonKey(name: 'comunicationWithTrainer') int? communicationWithTrainer,
      int? selfScore,
      bool isDayOff});
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
    Object? id = freezed,
    Object? activity = freezed,
    Object? stress = freezed,
    Object? health = freezed,
    Object? attention = freezed,
    Object? feelingIceAndGoal = freezed,
    Object? communicationWithTrainer = freezed,
    Object? selfScore = freezed,
    Object? isDayOff = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as int?,
      stress: freezed == stress
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as int?,
      health: freezed == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int?,
      attention: freezed == attention
          ? _value.attention
          : attention // ignore: cast_nullable_to_non_nullable
              as int?,
      feelingIceAndGoal: freezed == feelingIceAndGoal
          ? _value.feelingIceAndGoal
          : feelingIceAndGoal // ignore: cast_nullable_to_non_nullable
              as int?,
      communicationWithTrainer: freezed == communicationWithTrainer
          ? _value.communicationWithTrainer
          : communicationWithTrainer // ignore: cast_nullable_to_non_nullable
              as int?,
      selfScore: freezed == selfScore
          ? _value.selfScore
          : selfScore // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String? id,
      int? activity,
      int? stress,
      int? health,
      int? attention,
      @JsonKey(name: 'fellingIceAndGoal') int? feelingIceAndGoal,
      @JsonKey(name: 'comunicationWithTrainer') int? communicationWithTrainer,
      int? selfScore,
      bool isDayOff});
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
    Object? id = freezed,
    Object? activity = freezed,
    Object? stress = freezed,
    Object? health = freezed,
    Object? attention = freezed,
    Object? feelingIceAndGoal = freezed,
    Object? communicationWithTrainer = freezed,
    Object? selfScore = freezed,
    Object? isDayOff = null,
  }) {
    return _then(_$GameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as int?,
      stress: freezed == stress
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as int?,
      health: freezed == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int?,
      attention: freezed == attention
          ? _value.attention
          : attention // ignore: cast_nullable_to_non_nullable
              as int?,
      feelingIceAndGoal: freezed == feelingIceAndGoal
          ? _value.feelingIceAndGoal
          : feelingIceAndGoal // ignore: cast_nullable_to_non_nullable
              as int?,
      communicationWithTrainer: freezed == communicationWithTrainer
          ? _value.communicationWithTrainer
          : communicationWithTrainer // ignore: cast_nullable_to_non_nullable
              as int?,
      selfScore: freezed == selfScore
          ? _value.selfScore
          : selfScore // ignore: cast_nullable_to_non_nullable
              as int?,
      isDayOff: null == isDayOff
          ? _value.isDayOff
          : isDayOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {this.id,
      this.activity,
      this.stress,
      this.health,
      this.attention,
      @JsonKey(name: 'fellingIceAndGoal') this.feelingIceAndGoal,
      @JsonKey(name: 'comunicationWithTrainer') this.communicationWithTrainer,
      this.selfScore,
      this.isDayOff = false});

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String? id;
  @override
  final int? activity;
  @override
  final int? stress;
  @override
  final int? health;
  @override
  final int? attention;
  @override
  @JsonKey(name: 'fellingIceAndGoal')
  final int? feelingIceAndGoal;
  @override
  @JsonKey(name: 'comunicationWithTrainer')
  final int? communicationWithTrainer;
  @override
  final int? selfScore;
  @override
  @JsonKey()
  final bool isDayOff;

  @override
  String toString() {
    return 'Game(id: $id, activity: $activity, stress: $stress, health: $health, attention: $attention, feelingIceAndGoal: $feelingIceAndGoal, communicationWithTrainer: $communicationWithTrainer, selfScore: $selfScore, isDayOff: $isDayOff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.stress, stress) || other.stress == stress) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.attention, attention) ||
                other.attention == attention) &&
            (identical(other.feelingIceAndGoal, feelingIceAndGoal) ||
                other.feelingIceAndGoal == feelingIceAndGoal) &&
            (identical(
                    other.communicationWithTrainer, communicationWithTrainer) ||
                other.communicationWithTrainer == communicationWithTrainer) &&
            (identical(other.selfScore, selfScore) ||
                other.selfScore == selfScore) &&
            (identical(other.isDayOff, isDayOff) ||
                other.isDayOff == isDayOff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      activity,
      stress,
      health,
      attention,
      feelingIceAndGoal,
      communicationWithTrainer,
      selfScore,
      isDayOff);

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

abstract class _Game implements Game {
  const factory _Game(
      {final String? id,
      final int? activity,
      final int? stress,
      final int? health,
      final int? attention,
      @JsonKey(name: 'fellingIceAndGoal') final int? feelingIceAndGoal,
      @JsonKey(name: 'comunicationWithTrainer')
      final int? communicationWithTrainer,
      final int? selfScore,
      final bool isDayOff}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String? get id;
  @override
  int? get activity;
  @override
  int? get stress;
  @override
  int? get health;
  @override
  int? get attention;
  @override
  @JsonKey(name: 'fellingIceAndGoal')
  int? get feelingIceAndGoal;
  @override
  @JsonKey(name: 'comunicationWithTrainer')
  int? get communicationWithTrainer;
  @override
  int? get selfScore;
  @override
  bool get isDayOff;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime? get date => throw _privateConstructorUsedError;
  PlayerEstimate? get estimate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String? comment,
      @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime? date,
      PlayerEstimate? estimate});

  $PlayerEstimateCopyWith<$Res>? get estimate;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? date = freezed,
    Object? estimate = freezed,
  }) {
    return _then(_value.copyWith(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimate: freezed == estimate
          ? _value.estimate
          : estimate // ignore: cast_nullable_to_non_nullable
              as PlayerEstimate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerEstimateCopyWith<$Res>? get estimate {
    if (_value.estimate == null) {
      return null;
    }

    return $PlayerEstimateCopyWith<$Res>(_value.estimate!, (value) {
      return _then(_value.copyWith(estimate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? comment,
      @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      DateTime? date,
      PlayerEstimate? estimate});

  @override
  $PlayerEstimateCopyWith<$Res>? get estimate;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? date = freezed,
    Object? estimate = freezed,
  }) {
    return _then(_$CommentImpl(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimate: freezed == estimate
          ? _value.estimate
          : estimate // ignore: cast_nullable_to_non_nullable
              as PlayerEstimate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {this.comment,
      @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      this.date,
      this.estimate});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String? comment;
  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  final DateTime? date;
  @override
  final PlayerEstimate? estimate;

  @override
  String toString() {
    return 'Comment(comment: $comment, date: $date, estimate: $estimate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.estimate, estimate) ||
                other.estimate == estimate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, date, estimate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {final String? comment,
      @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
      final DateTime? date,
      final PlayerEstimate? estimate}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String? get comment;
  @override
  @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
  DateTime? get date;
  @override
  PlayerEstimate? get estimate;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerEstimate _$PlayerEstimateFromJson(Map<String, dynamic> json) {
  return _PlayerEstimate.fromJson(json);
}

/// @nodoc
mixin _$PlayerEstimate {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerEstimateCopyWith<PlayerEstimate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEstimateCopyWith<$Res> {
  factory $PlayerEstimateCopyWith(
          PlayerEstimate value, $Res Function(PlayerEstimate) then) =
      _$PlayerEstimateCopyWithImpl<$Res, PlayerEstimate>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$PlayerEstimateCopyWithImpl<$Res, $Val extends PlayerEstimate>
    implements $PlayerEstimateCopyWith<$Res> {
  _$PlayerEstimateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerEstimateImplCopyWith<$Res>
    implements $PlayerEstimateCopyWith<$Res> {
  factory _$$PlayerEstimateImplCopyWith(_$PlayerEstimateImpl value,
          $Res Function(_$PlayerEstimateImpl) then) =
      __$$PlayerEstimateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$PlayerEstimateImplCopyWithImpl<$Res>
    extends _$PlayerEstimateCopyWithImpl<$Res, _$PlayerEstimateImpl>
    implements _$$PlayerEstimateImplCopyWith<$Res> {
  __$$PlayerEstimateImplCopyWithImpl(
      _$PlayerEstimateImpl _value, $Res Function(_$PlayerEstimateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$PlayerEstimateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerEstimateImpl implements _PlayerEstimate {
  const _$PlayerEstimateImpl({this.id});

  factory _$PlayerEstimateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerEstimateImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'PlayerEstimate(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerEstimateImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerEstimateImplCopyWith<_$PlayerEstimateImpl> get copyWith =>
      __$$PlayerEstimateImplCopyWithImpl<_$PlayerEstimateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerEstimateImplToJson(
      this,
    );
  }
}

abstract class _PlayerEstimate implements PlayerEstimate {
  const factory _PlayerEstimate({final String? id}) = _$PlayerEstimateImpl;

  factory _PlayerEstimate.fromJson(Map<String, dynamic> json) =
      _$PlayerEstimateImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PlayerEstimateImplCopyWith<_$PlayerEstimateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
