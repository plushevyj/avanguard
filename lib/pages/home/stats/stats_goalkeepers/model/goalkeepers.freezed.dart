// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goalkeepers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goalkeepers _$GoalkeepersFromJson(Map<String, dynamic> json) {
  return _Goalkeepers.fromJson(json);
}

/// @nodoc
mixin _$Goalkeepers {
  List<Goalkeeper>? get names => throw _privateConstructorUsedError;
  bool? get weAtHome => throw _privateConstructorUsedError;
  bool? get winByBuls => throw _privateConstructorUsedError;
  bool? get winByOT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalkeepersCopyWith<Goalkeepers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalkeepersCopyWith<$Res> {
  factory $GoalkeepersCopyWith(
          Goalkeepers value, $Res Function(Goalkeepers) then) =
      _$GoalkeepersCopyWithImpl<$Res, Goalkeepers>;
  @useResult
  $Res call(
      {List<Goalkeeper>? names,
      bool? weAtHome,
      bool? winByBuls,
      bool? winByOT});
}

/// @nodoc
class _$GoalkeepersCopyWithImpl<$Res, $Val extends Goalkeepers>
    implements $GoalkeepersCopyWith<$Res> {
  _$GoalkeepersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = freezed,
    Object? weAtHome = freezed,
    Object? winByBuls = freezed,
    Object? winByOT = freezed,
  }) {
    return _then(_value.copyWith(
      names: freezed == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Goalkeeper>?,
      weAtHome: freezed == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      winByBuls: freezed == winByBuls
          ? _value.winByBuls
          : winByBuls // ignore: cast_nullable_to_non_nullable
              as bool?,
      winByOT: freezed == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalkeepersImplCopyWith<$Res>
    implements $GoalkeepersCopyWith<$Res> {
  factory _$$GoalkeepersImplCopyWith(
          _$GoalkeepersImpl value, $Res Function(_$GoalkeepersImpl) then) =
      __$$GoalkeepersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Goalkeeper>? names,
      bool? weAtHome,
      bool? winByBuls,
      bool? winByOT});
}

/// @nodoc
class __$$GoalkeepersImplCopyWithImpl<$Res>
    extends _$GoalkeepersCopyWithImpl<$Res, _$GoalkeepersImpl>
    implements _$$GoalkeepersImplCopyWith<$Res> {
  __$$GoalkeepersImplCopyWithImpl(
      _$GoalkeepersImpl _value, $Res Function(_$GoalkeepersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = freezed,
    Object? weAtHome = freezed,
    Object? winByBuls = freezed,
    Object? winByOT = freezed,
  }) {
    return _then(_$GoalkeepersImpl(
      names: freezed == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Goalkeeper>?,
      weAtHome: freezed == weAtHome
          ? _value.weAtHome
          : weAtHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      winByBuls: freezed == winByBuls
          ? _value.winByBuls
          : winByBuls // ignore: cast_nullable_to_non_nullable
              as bool?,
      winByOT: freezed == winByOT
          ? _value.winByOT
          : winByOT // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalkeepersImpl with DiagnosticableTreeMixin implements _Goalkeepers {
  const _$GoalkeepersImpl(
      {required final List<Goalkeeper>? names,
      required this.weAtHome,
      required this.winByBuls,
      required this.winByOT})
      : _names = names;

  factory _$GoalkeepersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalkeepersImplFromJson(json);

  final List<Goalkeeper>? _names;
  @override
  List<Goalkeeper>? get names {
    final value = _names;
    if (value == null) return null;
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? weAtHome;
  @override
  final bool? winByBuls;
  @override
  final bool? winByOT;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Goalkeepers(names: $names, weAtHome: $weAtHome, winByBuls: $winByBuls, winByOT: $winByOT)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Goalkeepers'))
      ..add(DiagnosticsProperty('names', names))
      ..add(DiagnosticsProperty('weAtHome', weAtHome))
      ..add(DiagnosticsProperty('winByBuls', winByBuls))
      ..add(DiagnosticsProperty('winByOT', winByOT));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalkeepersImpl &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            (identical(other.weAtHome, weAtHome) ||
                other.weAtHome == weAtHome) &&
            (identical(other.winByBuls, winByBuls) ||
                other.winByBuls == winByBuls) &&
            (identical(other.winByOT, winByOT) || other.winByOT == winByOT));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_names),
      weAtHome,
      winByBuls,
      winByOT);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalkeepersImplCopyWith<_$GoalkeepersImpl> get copyWith =>
      __$$GoalkeepersImplCopyWithImpl<_$GoalkeepersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalkeepersImplToJson(
      this,
    );
  }
}

abstract class _Goalkeepers implements Goalkeepers {
  const factory _Goalkeepers(
      {required final List<Goalkeeper>? names,
      required final bool? weAtHome,
      required final bool? winByBuls,
      required final bool? winByOT}) = _$GoalkeepersImpl;

  factory _Goalkeepers.fromJson(Map<String, dynamic> json) =
      _$GoalkeepersImpl.fromJson;

  @override
  List<Goalkeeper>? get names;
  @override
  bool? get weAtHome;
  @override
  bool? get winByBuls;
  @override
  bool? get winByOT;
  @override
  @JsonKey(ignore: true)
  _$$GoalkeepersImplCopyWith<_$GoalkeepersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
