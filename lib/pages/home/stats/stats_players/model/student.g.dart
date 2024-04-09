// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      hockeyRole: Student._translateToRu(json['hockeyRole'] as String),
      playerNumber: json['playerNumber'] as int,
      avatar: json['avatar'] as String?,
      gamesCount: json['gamesCount'] as int?,
    );

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'hockeyRole': Student._translateToEn(instance.hockeyRole),
      'playerNumber': instance.playerNumber,
      'avatar': instance.avatar,
      'gamesCount': instance.gamesCount,
    };
