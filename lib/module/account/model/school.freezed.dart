// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  String? get id => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  int? get updatedTimestamp => throw _privateConstructorUsedError;
  String? get franchiseeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<String>? get teachersIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call(
      {String? id,
      int? timestamp,
      int? updatedTimestamp,
      String? franchiseeId,
      String? name,
      String? description,
      String? city,
      String? address,
      List<String>? teachersIds});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? updatedTimestamp = freezed,
    Object? franchiseeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? teachersIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedTimestamp: freezed == updatedTimestamp
          ? _value.updatedTimestamp
          : updatedTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      franchiseeId: freezed == franchiseeId
          ? _value.franchiseeId
          : franchiseeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      teachersIds: freezed == teachersIds
          ? _value.teachersIds
          : teachersIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
          _$SchoolImpl value, $Res Function(_$SchoolImpl) then) =
      __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? timestamp,
      int? updatedTimestamp,
      String? franchiseeId,
      String? name,
      String? description,
      String? city,
      String? address,
      List<String>? teachersIds});
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
      _$SchoolImpl _value, $Res Function(_$SchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? updatedTimestamp = freezed,
    Object? franchiseeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? teachersIds = freezed,
  }) {
    return _then(_$SchoolImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedTimestamp: freezed == updatedTimestamp
          ? _value.updatedTimestamp
          : updatedTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      franchiseeId: freezed == franchiseeId
          ? _value.franchiseeId
          : franchiseeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      teachersIds: freezed == teachersIds
          ? _value._teachersIds
          : teachersIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolImpl implements _School {
  const _$SchoolImpl(
      {this.id,
      this.timestamp,
      this.updatedTimestamp,
      this.franchiseeId,
      this.name,
      this.description,
      this.city,
      this.address,
      final List<String>? teachersIds})
      : _teachersIds = teachersIds;

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  final String? id;
  @override
  final int? timestamp;
  @override
  final int? updatedTimestamp;
  @override
  final String? franchiseeId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? city;
  @override
  final String? address;
  final List<String>? _teachersIds;
  @override
  List<String>? get teachersIds {
    final value = _teachersIds;
    if (value == null) return null;
    if (_teachersIds is EqualUnmodifiableListView) return _teachersIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'School(id: $id, timestamp: $timestamp, updatedTimestamp: $updatedTimestamp, franchiseeId: $franchiseeId, name: $name, description: $description, city: $city, address: $address, teachersIds: $teachersIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.updatedTimestamp, updatedTimestamp) ||
                other.updatedTimestamp == updatedTimestamp) &&
            (identical(other.franchiseeId, franchiseeId) ||
                other.franchiseeId == franchiseeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._teachersIds, _teachersIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      updatedTimestamp,
      franchiseeId,
      name,
      description,
      city,
      address,
      const DeepCollectionEquality().hash(_teachersIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
      {final String? id,
      final int? timestamp,
      final int? updatedTimestamp,
      final String? franchiseeId,
      final String? name,
      final String? description,
      final String? city,
      final String? address,
      final List<String>? teachersIds}) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  String? get id;
  @override
  int? get timestamp;
  @override
  int? get updatedTimestamp;
  @override
  String? get franchiseeId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get city;
  @override
  String? get address;
  @override
  List<String>? get teachersIds;
  @override
  @JsonKey(ignore: true)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
