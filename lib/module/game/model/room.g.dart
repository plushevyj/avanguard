// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      roomId: json['roomId'] as String?,
      name: json['name'] as String?,
      startTimestamp: json['startTimestamp'] as int?,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
      'startTimestamp': instance.startTimestamp,
      'duration': instance.duration,
    };
