// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterPlayer _$FilterPlayerFromJson(Map<String, dynamic> json) => FilterPlayer(
      label: json['label'] as String,
      value: json['value'] as String,
      hockeyRole: RoleTranslator.toRu(json['hockeyRole'] as String?),
      shotsCount: json['shotsCount'] as int,
    );

Map<String, dynamic> _$FilterPlayerToJson(FilterPlayer instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'hockeyRole': RoleTranslator.toEn(instance.hockeyRole),
      'shotsCount': instance.shotsCount,
    };
