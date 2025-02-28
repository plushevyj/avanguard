// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
// List<String>? teachersIds,
// String? name,
// String? description,
// String? schoolId,
// String? franchiseeId,
// DateTime? createdAt,
// DateTime? updatedAt,
// List<String>? studentsIds,
// String? achievement,
// String? birthYear,
// String? assistanId,
// School? school,
// int? icebergId,
// bool? active,
// String? instatId,
// String? objectId,
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl({this.id});

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

// List<String>? teachersIds,
// String? name,
// String? description,
// String? schoolId,
// String? franchiseeId,
// DateTime? createdAt,
// DateTime? updatedAt,
// List<String>? studentsIds,
// String? achievement,
// String? birthYear,
// String? assistanId,
// School? school,
// int? icebergId,
// bool? active,
// String? instatId,
// String? objectId,
  @override
  final String? id;

  @override
  String toString() {
    return 'Group(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group({final String? id}) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override // List<String>? teachersIds,
// String? name,
// String? description,
// String? schoolId,
// String? franchiseeId,
// DateTime? createdAt,
// DateTime? updatedAt,
// List<String>? studentsIds,
// String? achievement,
// String? birthYear,
// String? assistanId,
// School? school,
// int? icebergId,
// bool? active,
// String? instatId,
// String? objectId,
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
