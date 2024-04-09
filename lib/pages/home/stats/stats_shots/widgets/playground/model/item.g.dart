// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      player: json['player'] as String,
      time: json['time'] as String,
      posX: (json['posX'] as num).toDouble(),
      posY: (json['posY'] as num).toDouble(),
      type: json['type'] as String,
      name: json['name'] as String,
      linkToVideo: json['linkToVideo'] as String?,
      videoTime: json['videoTime'] as String?,
      videoOffsets: json['videoOffsets'] == null
          ? null
          : VideoOffsets.fromJson(json['videoOffsets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'player': instance.player,
      'time': instance.time,
      'posX': instance.posX,
      'posY': instance.posY,
      'type': instance.type,
      'name': instance.name,
      'linkToVideo': instance.linkToVideo,
      'videoTime': instance.videoTime,
      'videoOffsets': instance.videoOffsets,
    };
