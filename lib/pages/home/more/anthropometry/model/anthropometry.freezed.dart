// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anthropometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String get playerNumber => throw _privateConstructorUsedError;
  List<Param> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String? avatar,
      String playerNumber,
      List<Param> params});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? playerNumber = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<Param>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String? avatar,
      String playerNumber,
      List<Param> params});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? playerNumber = null,
    Object? params = null,
  }) {
    return _then(_$PlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<Param>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl with DiagnosticableTreeMixin implements _Player {
  const _$PlayerImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.avatar,
      required this.playerNumber,
      required final List<Param> params})
      : _params = params;

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? avatar;
  @override
  final String playerNumber;
  final List<Param> _params;
  @override
  List<Param> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Player(id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar, playerNumber: $playerNumber, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Player'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('playerNumber', playerNumber))
      ..add(DiagnosticsProperty('params', params));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.playerNumber, playerNumber) ||
                other.playerNumber == playerNumber) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, avatar,
      playerNumber, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String? avatar,
      required final String playerNumber,
      required final List<Param> params}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get avatar;
  @override
  String get playerNumber;
  @override
  List<Param> get params;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Param _$ParamFromJson(Map<String, dynamic> json) {
  return _Param.fromJson(json);
}

/// @nodoc
mixin _$Param {
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get caliperometry =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  DateTime get date => throw _privateConstructorUsedError;
  Warnings get warnings => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamCopyWith<Param> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCopyWith<$Res> {
  factory $ParamCopyWith(Param value, $Res Function(Param) then) =
      _$ParamCopyWithImpl<$Res, Param>;
  @useResult
  $Res call(
      {double height,
      double weight,
      double caliperometry,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      DateTime date,
      Warnings warnings,
      double bmi});

  $WarningsCopyWith<$Res> get warnings;
}

/// @nodoc
class _$ParamCopyWithImpl<$Res, $Val extends Param>
    implements $ParamCopyWith<$Res> {
  _$ParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? caliperometry = null,
    Object? date = null,
    Object? warnings = null,
    Object? bmi = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      caliperometry: null == caliperometry
          ? _value.caliperometry
          : caliperometry // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      warnings: null == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as Warnings,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WarningsCopyWith<$Res> get warnings {
    return $WarningsCopyWith<$Res>(_value.warnings, (value) {
      return _then(_value.copyWith(warnings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParamImplCopyWith<$Res> implements $ParamCopyWith<$Res> {
  factory _$$ParamImplCopyWith(
          _$ParamImpl value, $Res Function(_$ParamImpl) then) =
      __$$ParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double height,
      double weight,
      double caliperometry,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      DateTime date,
      Warnings warnings,
      double bmi});

  @override
  $WarningsCopyWith<$Res> get warnings;
}

/// @nodoc
class __$$ParamImplCopyWithImpl<$Res>
    extends _$ParamCopyWithImpl<$Res, _$ParamImpl>
    implements _$$ParamImplCopyWith<$Res> {
  __$$ParamImplCopyWithImpl(
      _$ParamImpl _value, $Res Function(_$ParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? caliperometry = null,
    Object? date = null,
    Object? warnings = null,
    Object? bmi = null,
  }) {
    return _then(_$ParamImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      caliperometry: null == caliperometry
          ? _value.caliperometry
          : caliperometry // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      warnings: null == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as Warnings,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParamImpl extends _Param with DiagnosticableTreeMixin {
  const _$ParamImpl(
      {required this.height,
      required this.weight,
      required this.caliperometry,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      required this.date,
      required this.warnings,
      required this.bmi})
      : super._();

  factory _$ParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParamImplFromJson(json);

  @override
  final double height;
  @override
  final double weight;
  @override
  final double caliperometry;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  final DateTime date;
  @override
  final Warnings warnings;
  @override
  final double bmi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Param(height: $height, weight: $weight, caliperometry: $caliperometry, date: $date, warnings: $warnings, bmi: $bmi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Param'))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('caliperometry', caliperometry))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('warnings', warnings))
      ..add(DiagnosticsProperty('bmi', bmi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.caliperometry, caliperometry) ||
                other.caliperometry == caliperometry) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.warnings, warnings) ||
                other.warnings == warnings) &&
            (identical(other.bmi, bmi) || other.bmi == bmi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, height, weight, caliperometry, date, warnings, bmi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamImplCopyWith<_$ParamImpl> get copyWith =>
      __$$ParamImplCopyWithImpl<_$ParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParamImplToJson(
      this,
    );
  }
}

abstract class _Param extends Param {
  const factory _Param(
      {required final double height,
      required final double weight,
      required final double caliperometry,
      @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
      required final DateTime date,
      required final Warnings warnings,
      required final double bmi}) = _$ParamImpl;
  const _Param._() : super._();

  factory _Param.fromJson(Map<String, dynamic> json) = _$ParamImpl.fromJson;

  @override
  double get height;
  @override
  double get weight;
  @override
  double get caliperometry;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
  DateTime get date;
  @override
  Warnings get warnings;
  @override
  double get bmi;
  @override
  @JsonKey(ignore: true)
  _$$ParamImplCopyWith<_$ParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Warnings _$WarningsFromJson(Map<String, dynamic> json) {
  return _Warnings.fromJson(json);
}

/// @nodoc
mixin _$Warnings {
  bool get increaseHeightMoreFivePerSixMonth =>
      throw _privateConstructorUsedError;
  bool get decreaseHeightLessFivePerSixMonth =>
      throw _privateConstructorUsedError;
  bool get increaseWeightMoreFivePerSixMonth =>
      throw _privateConstructorUsedError;
  bool get decreaseWeightLessFivePerSixMonth =>
      throw _privateConstructorUsedError;
  bool get increaseFatMoreFivePerSixMonth => throw _privateConstructorUsedError;
  bool get decreaseFatLessFivePerSixMonth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarningsCopyWith<Warnings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarningsCopyWith<$Res> {
  factory $WarningsCopyWith(Warnings value, $Res Function(Warnings) then) =
      _$WarningsCopyWithImpl<$Res, Warnings>;
  @useResult
  $Res call(
      {bool increaseHeightMoreFivePerSixMonth,
      bool decreaseHeightLessFivePerSixMonth,
      bool increaseWeightMoreFivePerSixMonth,
      bool decreaseWeightLessFivePerSixMonth,
      bool increaseFatMoreFivePerSixMonth,
      bool decreaseFatLessFivePerSixMonth});
}

/// @nodoc
class _$WarningsCopyWithImpl<$Res, $Val extends Warnings>
    implements $WarningsCopyWith<$Res> {
  _$WarningsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? increaseHeightMoreFivePerSixMonth = null,
    Object? decreaseHeightLessFivePerSixMonth = null,
    Object? increaseWeightMoreFivePerSixMonth = null,
    Object? decreaseWeightLessFivePerSixMonth = null,
    Object? increaseFatMoreFivePerSixMonth = null,
    Object? decreaseFatLessFivePerSixMonth = null,
  }) {
    return _then(_value.copyWith(
      increaseHeightMoreFivePerSixMonth: null ==
              increaseHeightMoreFivePerSixMonth
          ? _value.increaseHeightMoreFivePerSixMonth
          : increaseHeightMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseHeightLessFivePerSixMonth: null ==
              decreaseHeightLessFivePerSixMonth
          ? _value.decreaseHeightLessFivePerSixMonth
          : decreaseHeightLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      increaseWeightMoreFivePerSixMonth: null ==
              increaseWeightMoreFivePerSixMonth
          ? _value.increaseWeightMoreFivePerSixMonth
          : increaseWeightMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseWeightLessFivePerSixMonth: null ==
              decreaseWeightLessFivePerSixMonth
          ? _value.decreaseWeightLessFivePerSixMonth
          : decreaseWeightLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      increaseFatMoreFivePerSixMonth: null == increaseFatMoreFivePerSixMonth
          ? _value.increaseFatMoreFivePerSixMonth
          : increaseFatMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseFatLessFivePerSixMonth: null == decreaseFatLessFivePerSixMonth
          ? _value.decreaseFatLessFivePerSixMonth
          : decreaseFatLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarningsImplCopyWith<$Res>
    implements $WarningsCopyWith<$Res> {
  factory _$$WarningsImplCopyWith(
          _$WarningsImpl value, $Res Function(_$WarningsImpl) then) =
      __$$WarningsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool increaseHeightMoreFivePerSixMonth,
      bool decreaseHeightLessFivePerSixMonth,
      bool increaseWeightMoreFivePerSixMonth,
      bool decreaseWeightLessFivePerSixMonth,
      bool increaseFatMoreFivePerSixMonth,
      bool decreaseFatLessFivePerSixMonth});
}

/// @nodoc
class __$$WarningsImplCopyWithImpl<$Res>
    extends _$WarningsCopyWithImpl<$Res, _$WarningsImpl>
    implements _$$WarningsImplCopyWith<$Res> {
  __$$WarningsImplCopyWithImpl(
      _$WarningsImpl _value, $Res Function(_$WarningsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? increaseHeightMoreFivePerSixMonth = null,
    Object? decreaseHeightLessFivePerSixMonth = null,
    Object? increaseWeightMoreFivePerSixMonth = null,
    Object? decreaseWeightLessFivePerSixMonth = null,
    Object? increaseFatMoreFivePerSixMonth = null,
    Object? decreaseFatLessFivePerSixMonth = null,
  }) {
    return _then(_$WarningsImpl(
      increaseHeightMoreFivePerSixMonth: null ==
              increaseHeightMoreFivePerSixMonth
          ? _value.increaseHeightMoreFivePerSixMonth
          : increaseHeightMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseHeightLessFivePerSixMonth: null ==
              decreaseHeightLessFivePerSixMonth
          ? _value.decreaseHeightLessFivePerSixMonth
          : decreaseHeightLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      increaseWeightMoreFivePerSixMonth: null ==
              increaseWeightMoreFivePerSixMonth
          ? _value.increaseWeightMoreFivePerSixMonth
          : increaseWeightMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseWeightLessFivePerSixMonth: null ==
              decreaseWeightLessFivePerSixMonth
          ? _value.decreaseWeightLessFivePerSixMonth
          : decreaseWeightLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      increaseFatMoreFivePerSixMonth: null == increaseFatMoreFivePerSixMonth
          ? _value.increaseFatMoreFivePerSixMonth
          : increaseFatMoreFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      decreaseFatLessFivePerSixMonth: null == decreaseFatLessFivePerSixMonth
          ? _value.decreaseFatLessFivePerSixMonth
          : decreaseFatLessFivePerSixMonth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarningsImpl with DiagnosticableTreeMixin implements _Warnings {
  const _$WarningsImpl(
      {required this.increaseHeightMoreFivePerSixMonth,
      required this.decreaseHeightLessFivePerSixMonth,
      required this.increaseWeightMoreFivePerSixMonth,
      required this.decreaseWeightLessFivePerSixMonth,
      required this.increaseFatMoreFivePerSixMonth,
      required this.decreaseFatLessFivePerSixMonth});

  factory _$WarningsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarningsImplFromJson(json);

  @override
  final bool increaseHeightMoreFivePerSixMonth;
  @override
  final bool decreaseHeightLessFivePerSixMonth;
  @override
  final bool increaseWeightMoreFivePerSixMonth;
  @override
  final bool decreaseWeightLessFivePerSixMonth;
  @override
  final bool increaseFatMoreFivePerSixMonth;
  @override
  final bool decreaseFatLessFivePerSixMonth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Warnings(increaseHeightMoreFivePerSixMonth: $increaseHeightMoreFivePerSixMonth, decreaseHeightLessFivePerSixMonth: $decreaseHeightLessFivePerSixMonth, increaseWeightMoreFivePerSixMonth: $increaseWeightMoreFivePerSixMonth, decreaseWeightLessFivePerSixMonth: $decreaseWeightLessFivePerSixMonth, increaseFatMoreFivePerSixMonth: $increaseFatMoreFivePerSixMonth, decreaseFatLessFivePerSixMonth: $decreaseFatLessFivePerSixMonth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Warnings'))
      ..add(DiagnosticsProperty('increaseHeightMoreFivePerSixMonth',
          increaseHeightMoreFivePerSixMonth))
      ..add(DiagnosticsProperty('decreaseHeightLessFivePerSixMonth',
          decreaseHeightLessFivePerSixMonth))
      ..add(DiagnosticsProperty('increaseWeightMoreFivePerSixMonth',
          increaseWeightMoreFivePerSixMonth))
      ..add(DiagnosticsProperty('decreaseWeightLessFivePerSixMonth',
          decreaseWeightLessFivePerSixMonth))
      ..add(DiagnosticsProperty(
          'increaseFatMoreFivePerSixMonth', increaseFatMoreFivePerSixMonth))
      ..add(DiagnosticsProperty(
          'decreaseFatLessFivePerSixMonth', decreaseFatLessFivePerSixMonth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningsImpl &&
            (identical(other.increaseHeightMoreFivePerSixMonth,
                    increaseHeightMoreFivePerSixMonth) ||
                other.increaseHeightMoreFivePerSixMonth ==
                    increaseHeightMoreFivePerSixMonth) &&
            (identical(other.decreaseHeightLessFivePerSixMonth,
                    decreaseHeightLessFivePerSixMonth) ||
                other.decreaseHeightLessFivePerSixMonth ==
                    decreaseHeightLessFivePerSixMonth) &&
            (identical(other.increaseWeightMoreFivePerSixMonth,
                    increaseWeightMoreFivePerSixMonth) ||
                other.increaseWeightMoreFivePerSixMonth ==
                    increaseWeightMoreFivePerSixMonth) &&
            (identical(other.decreaseWeightLessFivePerSixMonth,
                    decreaseWeightLessFivePerSixMonth) ||
                other.decreaseWeightLessFivePerSixMonth ==
                    decreaseWeightLessFivePerSixMonth) &&
            (identical(other.increaseFatMoreFivePerSixMonth,
                    increaseFatMoreFivePerSixMonth) ||
                other.increaseFatMoreFivePerSixMonth ==
                    increaseFatMoreFivePerSixMonth) &&
            (identical(other.decreaseFatLessFivePerSixMonth,
                    decreaseFatLessFivePerSixMonth) ||
                other.decreaseFatLessFivePerSixMonth ==
                    decreaseFatLessFivePerSixMonth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      increaseHeightMoreFivePerSixMonth,
      decreaseHeightLessFivePerSixMonth,
      increaseWeightMoreFivePerSixMonth,
      decreaseWeightLessFivePerSixMonth,
      increaseFatMoreFivePerSixMonth,
      decreaseFatLessFivePerSixMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningsImplCopyWith<_$WarningsImpl> get copyWith =>
      __$$WarningsImplCopyWithImpl<_$WarningsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarningsImplToJson(
      this,
    );
  }
}

abstract class _Warnings implements Warnings {
  const factory _Warnings(
      {required final bool increaseHeightMoreFivePerSixMonth,
      required final bool decreaseHeightLessFivePerSixMonth,
      required final bool increaseWeightMoreFivePerSixMonth,
      required final bool decreaseWeightLessFivePerSixMonth,
      required final bool increaseFatMoreFivePerSixMonth,
      required final bool decreaseFatLessFivePerSixMonth}) = _$WarningsImpl;

  factory _Warnings.fromJson(Map<String, dynamic> json) =
      _$WarningsImpl.fromJson;

  @override
  bool get increaseHeightMoreFivePerSixMonth;
  @override
  bool get decreaseHeightLessFivePerSixMonth;
  @override
  bool get increaseWeightMoreFivePerSixMonth;
  @override
  bool get decreaseWeightLessFivePerSixMonth;
  @override
  bool get increaseFatMoreFivePerSixMonth;
  @override
  bool get decreaseFatLessFivePerSixMonth;
  @override
  @JsonKey(ignore: true)
  _$$WarningsImplCopyWith<_$WarningsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
