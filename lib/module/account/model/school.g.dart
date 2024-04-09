// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      id: json['id'] as String?,
      timestamp: json['timestamp'] as int?,
      updatedTimestamp: json['updatedTimestamp'] as int?,
      franchiseeId: json['franchiseeId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      teachersIds: (json['teachersIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'updatedTimestamp': instance.updatedTimestamp,
      'franchiseeId': instance.franchiseeId,
      'name': instance.name,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'teachersIds': instance.teachersIds,
    };
