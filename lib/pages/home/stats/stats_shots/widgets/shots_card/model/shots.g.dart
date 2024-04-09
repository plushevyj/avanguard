// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shots.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shots _$ShotsFromJson(Map<String, dynamic> json) => Shots(
      shotsOnGoalDangerous: (json['shotsOnGoalDangerous'] as List<dynamic>)
          .map((e) => Shot.fromJson(e as Map<String, dynamic>))
          .toList(),
      shotsOnGoal: (json['shotsOnGoal'] as List<dynamic>)
          .map((e) => Shot.fromJson(e as Map<String, dynamic>))
          .toList(),
      shots: (json['shots'] as List<dynamic>)
          .map((e) => Shot.fromJson(e as Map<String, dynamic>))
          .toList(),
      blockedShots: (json['blockedShots'] as List<dynamic>)
          .map((e) => Shot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShotsToJson(Shots instance) => <String, dynamic>{
      'shotsOnGoalDangerous': instance.shotsOnGoalDangerous,
      'shotsOnGoal': instance.shotsOnGoal,
      'shots': instance.shots,
      'blockedShots': instance.blockedShots,
    };
