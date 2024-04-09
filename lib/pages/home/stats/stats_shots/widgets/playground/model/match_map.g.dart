// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchMap _$MatchMapFromJson(Map<String, dynamic> json) => MatchMap(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchMapToJson(MatchMap instance) => <String, dynamic>{
      'items': instance.items,
    };
