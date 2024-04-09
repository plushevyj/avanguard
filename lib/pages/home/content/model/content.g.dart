// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionWrapperImpl _$$SectionWrapperImplFromJson(Map<String, dynamic> json) =>
    _$SectionWrapperImpl(
      section: Section.fromJson(json['section'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SectionWrapperImplToJson(
        _$SectionWrapperImpl instance) =>
    <String, dynamic>{
      'section': instance.section,
    };

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      materials: (json['materials'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'materials': instance.materials,
      'count': instance.count,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      schools: (json['schools'] as List<dynamic>?)
          ?.map((e) => School.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      type: ContentType.fromJson(json['type'] as Map<String, dynamic>),
      hockeyRole: json['hockeyRole'] == null
          ? null
          : HockeyRole.fromJson(json['hockeyRole'] as Map<String, dynamic>),
      link: json['link'] as String?,
      storage: json['storage'] == null
          ? null
          : Storage.fromJson(json['storage'] as Map<String, dynamic>),
      memberRoles: (json['memberRoles'] as List<dynamic>?)
          ?.map((e) => MemberRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      isNew: json['isNew'] as bool,
      canEdit: json['canEdit'] as bool,
      canDelete: json['canDelete'] as bool,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'groups': instance.groups,
      'schools': instance.schools,
      'tags': instance.tags,
      'description': instance.description,
      'author': instance.author,
      'category': instance.category,
      'type': instance.type,
      'hockeyRole': instance.hockeyRole,
      'link': instance.link,
      'storage': instance.storage,
      'memberRoles': instance.memberRoles,
      'students': instance.students,
      'teachers': instance.teachers,
      'createdAt': instance.createdAt,
      'isNew': instance.isNew,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'tags': instance.tags,
    };

_$ContentTypeImpl _$$ContentTypeImplFromJson(Map<String, dynamic> json) =>
    _$ContentTypeImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      canHaveFile: json['canHaveFile'] as bool,
      canHaveLink: json['canHaveLink'] as bool,
      canHaveVideo: json['canHaveVideo'] as bool,
    );

Map<String, dynamic> _$$ContentTypeImplToJson(_$ContentTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'categories': instance.categories,
      'canHaveFile': instance.canHaveFile,
      'canHaveLink': instance.canHaveLink,
      'canHaveVideo': instance.canHaveVideo,
    };

_$HockeyRoleImpl _$$HockeyRoleImplFromJson(Map<String, dynamic> json) =>
    _$HockeyRoleImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$HockeyRoleImplToJson(_$HockeyRoleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$StorageImpl _$$StorageImplFromJson(Map<String, dynamic> json) =>
    _$StorageImpl(
      id: json['id'] as String,
      originalName: json['originalName'] as String,
      mimetype: json['mimetype'] as String,
      size: json['size'] as int,
      link: json['link'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$StorageImplToJson(_$StorageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalName': instance.originalName,
      'mimetype': instance.mimetype,
      'size': instance.size,
      'link': instance.link,
      'key': instance.key,
    };

_$MemberRoleImpl _$$MemberRoleImplFromJson(Map<String, dynamic> json) =>
    _$MemberRoleImpl(
      name: json['name'] as String,
      userRole: json['userRole'] as String,
    );

Map<String, dynamic> _$$MemberRoleImplToJson(_$MemberRoleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userRole': instance.userRole,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TeacherImpl _$$TeacherImplFromJson(Map<String, dynamic> json) =>
    _$TeacherImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
