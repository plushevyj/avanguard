// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      shiftsCount: json['shiftsCount'] as int,
      value: Player._toInt(json['value']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      playerNumber: json['playerNumber'] as int,
      playerId: json['playerId'] as String,
      totalTime: json['totalTime'] as String,
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'shiftsCount': instance.shiftsCount,
      'value': instance.value,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'playerNumber': instance.playerNumber,
      'playerId': instance.playerId,
      'totalTime': instance.totalTime,
    };
