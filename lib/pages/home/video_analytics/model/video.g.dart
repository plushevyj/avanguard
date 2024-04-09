// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      sId: json['sId'] as String?,
      schoolId: json['schoolId'] as String?,
      moments: json['moments'] as List<dynamic>?,
      link: json['link'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      hockeyRole: json['hockeyRole'] as List<dynamic>?,
      teachersIds: (json['teachersIds'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      studentsIds: json['studentsIds'] as List<dynamic>?,
      groupsIds: (json['groupsIds'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      createdAt: json['createdAt'] as String?,
      iV: json['iV'] as int?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'schoolId': instance.schoolId,
      'moments': instance.moments,
      'link': instance.link,
      'name': instance.name,
      'type': instance.type,
      'hockeyRole': instance.hockeyRole,
      'teachersIds': instance.teachersIds,
      'studentsIds': instance.studentsIds,
      'groupsIds': instance.groupsIds,
      'createdAt': instance.createdAt,
      'iV': instance.iV,
    };
