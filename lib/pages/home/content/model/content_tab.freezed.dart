// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentTab _$ContentTabFromJson(Map<String, dynamic> json) {
  return _ContentTab.fromJson(json);
}

/// @nodoc
mixin _$ContentTab {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentTabCopyWith<ContentTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentTabCopyWith<$Res> {
  factory $ContentTabCopyWith(
          ContentTab value, $Res Function(ContentTab) then) =
      _$ContentTabCopyWithImpl<$Res, ContentTab>;
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class _$ContentTabCopyWithImpl<$Res, $Val extends ContentTab>
    implements $ContentTabCopyWith<$Res> {
  _$ContentTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentTabImplCopyWith<$Res>
    implements $ContentTabCopyWith<$Res> {
  factory _$$ContentTabImplCopyWith(
          _$ContentTabImpl value, $Res Function(_$ContentTabImpl) then) =
      __$$ContentTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class __$$ContentTabImplCopyWithImpl<$Res>
    extends _$ContentTabCopyWithImpl<$Res, _$ContentTabImpl>
    implements _$$ContentTabImplCopyWith<$Res> {
  __$$ContentTabImplCopyWithImpl(
      _$ContentTabImpl _value, $Res Function(_$ContentTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$ContentTabImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentTabImpl with DiagnosticableTreeMixin implements _ContentTab {
  const _$ContentTabImpl({required this.name, required this.slug});

  factory _$ContentTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentTabImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentTab(name: $name, slug: $slug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentTab'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('slug', slug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentTabImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentTabImplCopyWith<_$ContentTabImpl> get copyWith =>
      __$$ContentTabImplCopyWithImpl<_$ContentTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentTabImplToJson(
      this,
    );
  }
}

abstract class _ContentTab implements ContentTab {
  const factory _ContentTab(
      {required final String name,
      required final String slug}) = _$ContentTabImpl;

  factory _ContentTab.fromJson(Map<String, dynamic> json) =
      _$ContentTabImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$ContentTabImplCopyWith<_$ContentTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
