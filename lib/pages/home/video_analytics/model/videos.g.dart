// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideosImpl _$$VideosImplFromJson(Map<String, dynamic> json) => _$VideosImpl(
      totalItems: json['totalItems'] as int,
      itemsPerPage: json['itemsPerPage'] as int,
      totalPages: json['totalPages'] as int,
      videoAnalytics: (json['videoAnalytics'] as List<dynamic>)
          .map((e) => VideoAnalytics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideosImplToJson(_$VideosImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'itemsPerPage': instance.itemsPerPage,
      'totalPages': instance.totalPages,
      'videoAnalytics': instance.videoAnalytics,
    };

_$VideoAnalyticsImpl _$$VideoAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$VideoAnalyticsImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      tag: json['tag'] == null
          ? null
          : Tag.fromJson(json['tag'] as Map<String, dynamic>),
      link: json['link'] as String,
      createdAt: json['createdAt'] as String,
      isNew: json['isNew'] as bool,
    );

Map<String, dynamic> _$$VideoAnalyticsImplToJson(
        _$VideoAnalyticsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'link': instance.link,
      'createdAt': instance.createdAt,
      'isNew': instance.isNew,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };
