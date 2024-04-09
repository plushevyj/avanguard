// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) => Goal(
      time: json['time'] as int,
      half: json['half'] as String,
      playerId: Goal._toInt(json['playerId']),
      isOur: json['isOur'] as bool,
      currentScore: json['currentScore'] as String,
    );

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
      'time': instance.time,
      'half': instance.half,
      'playerId': instance.playerId,
      'isOur': instance.isOur,
      'currentScore': instance.currentScore,
    };
