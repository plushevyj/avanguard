// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  int get totalItems => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<VideoAnalytics> get videoAnalytics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call(
      {int totalItems,
      int itemsPerPage,
      int totalPages,
      List<VideoAnalytics> videoAnalytics});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? totalPages = null,
    Object? videoAnalytics = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      videoAnalytics: null == videoAnalytics
          ? _value.videoAnalytics
          : videoAnalytics // ignore: cast_nullable_to_non_nullable
              as List<VideoAnalytics>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideosImplCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$VideosImplCopyWith(
          _$VideosImpl value, $Res Function(_$VideosImpl) then) =
      __$$VideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalItems,
      int itemsPerPage,
      int totalPages,
      List<VideoAnalytics> videoAnalytics});
}

/// @nodoc
class __$$VideosImplCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$VideosImpl>
    implements _$$VideosImplCopyWith<$Res> {
  __$$VideosImplCopyWithImpl(
      _$VideosImpl _value, $Res Function(_$VideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? totalPages = null,
    Object? videoAnalytics = null,
  }) {
    return _then(_$VideosImpl(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      videoAnalytics: null == videoAnalytics
          ? _value._videoAnalytics
          : videoAnalytics // ignore: cast_nullable_to_non_nullable
              as List<VideoAnalytics>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosImpl with DiagnosticableTreeMixin implements _Videos {
  const _$VideosImpl(
      {required this.totalItems,
      required this.itemsPerPage,
      required this.totalPages,
      required final List<VideoAnalytics> videoAnalytics})
      : _videoAnalytics = videoAnalytics;

  factory _$VideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosImplFromJson(json);

  @override
  final int totalItems;
  @override
  final int itemsPerPage;
  @override
  final int totalPages;
  final List<VideoAnalytics> _videoAnalytics;
  @override
  List<VideoAnalytics> get videoAnalytics {
    if (_videoAnalytics is EqualUnmodifiableListView) return _videoAnalytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoAnalytics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Videos(totalItems: $totalItems, itemsPerPage: $itemsPerPage, totalPages: $totalPages, videoAnalytics: $videoAnalytics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Videos'))
      ..add(DiagnosticsProperty('totalItems', totalItems))
      ..add(DiagnosticsProperty('itemsPerPage', itemsPerPage))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('videoAnalytics', videoAnalytics));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality()
                .equals(other._videoAnalytics, _videoAnalytics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, itemsPerPage,
      totalPages, const DeepCollectionEquality().hash(_videoAnalytics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      __$$VideosImplCopyWithImpl<_$VideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosImplToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos(
      {required final int totalItems,
      required final int itemsPerPage,
      required final int totalPages,
      required final List<VideoAnalytics> videoAnalytics}) = _$VideosImpl;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$VideosImpl.fromJson;

  @override
  int get totalItems;
  @override
  int get itemsPerPage;
  @override
  int get totalPages;
  @override
  List<VideoAnalytics> get videoAnalytics;
  @override
  @JsonKey(ignore: true)
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoAnalytics _$VideoAnalyticsFromJson(Map<String, dynamic> json) {
  return _VideoAnalytics.fromJson(json);
}

/// @nodoc
mixin _$VideoAnalytics {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Tag? get tag => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoAnalyticsCopyWith<VideoAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoAnalyticsCopyWith<$Res> {
  factory $VideoAnalyticsCopyWith(
          VideoAnalytics value, $Res Function(VideoAnalytics) then) =
      _$VideoAnalyticsCopyWithImpl<$Res, VideoAnalytics>;
  @useResult
  $Res call(
      {String id,
      String name,
      Tag? tag,
      String link,
      String createdAt,
      bool isNew});

  $TagCopyWith<$Res>? get tag;
}

/// @nodoc
class _$VideoAnalyticsCopyWithImpl<$Res, $Val extends VideoAnalytics>
    implements $VideoAnalyticsCopyWith<$Res> {
  _$VideoAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = freezed,
    Object? link = null,
    Object? createdAt = null,
    Object? isNew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TagCopyWith<$Res>? get tag {
    if (_value.tag == null) {
      return null;
    }

    return $TagCopyWith<$Res>(_value.tag!, (value) {
      return _then(_value.copyWith(tag: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoAnalyticsImplCopyWith<$Res>
    implements $VideoAnalyticsCopyWith<$Res> {
  factory _$$VideoAnalyticsImplCopyWith(_$VideoAnalyticsImpl value,
          $Res Function(_$VideoAnalyticsImpl) then) =
      __$$VideoAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Tag? tag,
      String link,
      String createdAt,
      bool isNew});

  @override
  $TagCopyWith<$Res>? get tag;
}

/// @nodoc
class __$$VideoAnalyticsImplCopyWithImpl<$Res>
    extends _$VideoAnalyticsCopyWithImpl<$Res, _$VideoAnalyticsImpl>
    implements _$$VideoAnalyticsImplCopyWith<$Res> {
  __$$VideoAnalyticsImplCopyWithImpl(
      _$VideoAnalyticsImpl _value, $Res Function(_$VideoAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = freezed,
    Object? link = null,
    Object? createdAt = null,
    Object? isNew = null,
  }) {
    return _then(_$VideoAnalyticsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoAnalyticsImpl
    with DiagnosticableTreeMixin
    implements _VideoAnalytics {
  const _$VideoAnalyticsImpl(
      {required this.id,
      required this.name,
      required this.tag,
      required this.link,
      required this.createdAt,
      required this.isNew});

  factory _$VideoAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoAnalyticsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Tag? tag;
  @override
  final String link;
  @override
  final String createdAt;
  @override
  final bool isNew;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoAnalytics(id: $id, name: $name, tag: $tag, link: $link, createdAt: $createdAt, isNew: $isNew)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoAnalytics'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('isNew', isNew));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoAnalyticsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, tag, link, createdAt, isNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoAnalyticsImplCopyWith<_$VideoAnalyticsImpl> get copyWith =>
      __$$VideoAnalyticsImplCopyWithImpl<_$VideoAnalyticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _VideoAnalytics implements VideoAnalytics {
  const factory _VideoAnalytics(
      {required final String id,
      required final String name,
      required final Tag? tag,
      required final String link,
      required final String createdAt,
      required final bool isNew}) = _$VideoAnalyticsImpl;

  factory _VideoAnalytics.fromJson(Map<String, dynamic> json) =
      _$VideoAnalyticsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Tag? get tag;
  @override
  String get link;
  @override
  String get createdAt;
  @override
  bool get isNew;
  @override
  @JsonKey(ignore: true)
  _$$VideoAnalyticsImplCopyWith<_$VideoAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

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
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class __$$TagImplCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$TagImpl>
    implements _$$TagImplCopyWith<$Res> {
  __$$TagImplCopyWithImpl(_$TagImpl _value, $Res Function(_$TagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$TagImpl(
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
class _$TagImpl with DiagnosticableTreeMixin implements _Tag {
  const _$TagImpl({required this.name, required this.slug});

  factory _$TagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tag(name: $name, slug: $slug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tag'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('slug', slug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      __$$TagImplCopyWithImpl<_$TagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagImplToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag({required final String name, required final String slug}) =
      _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
