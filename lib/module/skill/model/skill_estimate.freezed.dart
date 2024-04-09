// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_estimate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillEstimate _$SkillEstimateFromJson(Map<String, dynamic> json) {
  return _SkillEstimate.fromJson(json);
}

/// @nodoc
mixin _$SkillEstimate {
  String? get id => throw _privateConstructorUsedError; // Student? student,
// List<Specialist>? specialists,
  Skill? get skill => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get playerId => throw _privateConstructorUsedError;
  String? get todo => throw _privateConstructorUsedError;
  String? get plan => throw _privateConstructorUsedError;
  String? get controlDate => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  int? get expectedScore => throw _privateConstructorUsedError;
  int? get completedScore => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillEstimateCopyWith<SkillEstimate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillEstimateCopyWith<$Res> {
  factory $SkillEstimateCopyWith(
          SkillEstimate value, $Res Function(SkillEstimate) then) =
      _$SkillEstimateCopyWithImpl<$Res, SkillEstimate>;
  @useResult
  $Res call(
      {String? id,
      Skill? skill,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? playerId,
      String? todo,
      String? plan,
      String? controlDate,
      int? score,
      int? expectedScore,
      int? completedScore,
      bool? isCompleted});

  $SkillCopyWith<$Res>? get skill;
}

/// @nodoc
class _$SkillEstimateCopyWithImpl<$Res, $Val extends SkillEstimate>
    implements $SkillEstimateCopyWith<$Res> {
  _$SkillEstimateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? skill = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? playerId = freezed,
    Object? todo = freezed,
    Object? plan = freezed,
    Object? controlDate = freezed,
    Object? score = freezed,
    Object? expectedScore = freezed,
    Object? completedScore = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      controlDate: freezed == controlDate
          ? _value.controlDate
          : controlDate // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedScore: freezed == expectedScore
          ? _value.expectedScore
          : expectedScore // ignore: cast_nullable_to_non_nullable
              as int?,
      completedScore: freezed == completedScore
          ? _value.completedScore
          : completedScore // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SkillCopyWith<$Res>? get skill {
    if (_value.skill == null) {
      return null;
    }

    return $SkillCopyWith<$Res>(_value.skill!, (value) {
      return _then(_value.copyWith(skill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SkillEstimateImplCopyWith<$Res>
    implements $SkillEstimateCopyWith<$Res> {
  factory _$$SkillEstimateImplCopyWith(
          _$SkillEstimateImpl value, $Res Function(_$SkillEstimateImpl) then) =
      __$$SkillEstimateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Skill? skill,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? playerId,
      String? todo,
      String? plan,
      String? controlDate,
      int? score,
      int? expectedScore,
      int? completedScore,
      bool? isCompleted});

  @override
  $SkillCopyWith<$Res>? get skill;
}

/// @nodoc
class __$$SkillEstimateImplCopyWithImpl<$Res>
    extends _$SkillEstimateCopyWithImpl<$Res, _$SkillEstimateImpl>
    implements _$$SkillEstimateImplCopyWith<$Res> {
  __$$SkillEstimateImplCopyWithImpl(
      _$SkillEstimateImpl _value, $Res Function(_$SkillEstimateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? skill = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? playerId = freezed,
    Object? todo = freezed,
    Object? plan = freezed,
    Object? controlDate = freezed,
    Object? score = freezed,
    Object? expectedScore = freezed,
    Object? completedScore = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$SkillEstimateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      controlDate: freezed == controlDate
          ? _value.controlDate
          : controlDate // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedScore: freezed == expectedScore
          ? _value.expectedScore
          : expectedScore // ignore: cast_nullable_to_non_nullable
              as int?,
      completedScore: freezed == completedScore
          ? _value.completedScore
          : completedScore // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillEstimateImpl implements _SkillEstimate {
  const _$SkillEstimateImpl(
      {this.id,
      this.skill,
      this.createdAt,
      this.updatedAt,
      this.playerId,
      this.todo,
      this.plan,
      this.controlDate,
      this.score,
      this.expectedScore,
      this.completedScore,
      this.isCompleted});

  factory _$SkillEstimateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillEstimateImplFromJson(json);

  @override
  final String? id;
// Student? student,
// List<Specialist>? specialists,
  @override
  final Skill? skill;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? playerId;
  @override
  final String? todo;
  @override
  final String? plan;
  @override
  final String? controlDate;
  @override
  final int? score;
  @override
  final int? expectedScore;
  @override
  final int? completedScore;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'SkillEstimate(id: $id, skill: $skill, createdAt: $createdAt, updatedAt: $updatedAt, playerId: $playerId, todo: $todo, plan: $plan, controlDate: $controlDate, score: $score, expectedScore: $expectedScore, completedScore: $completedScore, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillEstimateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.skill, skill) || other.skill == skill) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.controlDate, controlDate) ||
                other.controlDate == controlDate) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.expectedScore, expectedScore) ||
                other.expectedScore == expectedScore) &&
            (identical(other.completedScore, completedScore) ||
                other.completedScore == completedScore) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      skill,
      createdAt,
      updatedAt,
      playerId,
      todo,
      plan,
      controlDate,
      score,
      expectedScore,
      completedScore,
      isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillEstimateImplCopyWith<_$SkillEstimateImpl> get copyWith =>
      __$$SkillEstimateImplCopyWithImpl<_$SkillEstimateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillEstimateImplToJson(
      this,
    );
  }
}

abstract class _SkillEstimate implements SkillEstimate {
  const factory _SkillEstimate(
      {final String? id,
      final Skill? skill,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? playerId,
      final String? todo,
      final String? plan,
      final String? controlDate,
      final int? score,
      final int? expectedScore,
      final int? completedScore,
      final bool? isCompleted}) = _$SkillEstimateImpl;

  factory _SkillEstimate.fromJson(Map<String, dynamic> json) =
      _$SkillEstimateImpl.fromJson;

  @override
  String? get id;
  @override // Student? student,
// List<Specialist>? specialists,
  Skill? get skill;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get playerId;
  @override
  String? get todo;
  @override
  String? get plan;
  @override
  String? get controlDate;
  @override
  int? get score;
  @override
  int? get expectedScore;
  @override
  int? get completedScore;
  @override
  bool? get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$SkillEstimateImplCopyWith<_$SkillEstimateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call(
      {String name,
      String id,
      DateTime createdAt,
      DateTime updatedAt,
      Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SkillImplCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$SkillImplCopyWith(
          _$SkillImpl value, $Res Function(_$SkillImpl) then) =
      __$$SkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      DateTime createdAt,
      DateTime updatedAt,
      Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$SkillImplCopyWithImpl<$Res>
    extends _$SkillCopyWithImpl<$Res, _$SkillImpl>
    implements _$$SkillImplCopyWith<$Res> {
  __$$SkillImplCopyWithImpl(
      _$SkillImpl _value, $Res Function(_$SkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
  }) {
    return _then(_$SkillImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillImpl implements _Skill {
  const _$SkillImpl(
      {required this.name,
      required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.category});

  factory _$SkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Category category;

  @override
  String toString() {
    return 'Skill(name: $name, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, createdAt, updatedAt, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      __$$SkillImplCopyWithImpl<_$SkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillImplToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {required final String name,
      required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Category category}) = _$SkillImpl;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$SkillImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String name, String id, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.name,
      required this.id,
      required this.createdAt,
      required this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Category(name: $name, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String name,
      required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
