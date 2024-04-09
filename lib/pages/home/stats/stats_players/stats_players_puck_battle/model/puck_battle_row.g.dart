// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puck_battle_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PuckBattleRow _$PuckBattleRowFromJson(Map<String, dynamic> json) =>
    PuckBattleRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      takeaways:
          NumberAndTop5.fromJson(json['takeaways'] as Map<String, dynamic>),
      takeawaysOZ:
          NumberAndTop5.fromJson(json['takeawaysOZ'] as Map<String, dynamic>),
      takeawaysDZ:
          NumberAndTop5.fromJson(json['takeawaysDZ'] as Map<String, dynamic>),
      giveaways:
          NumberAndTop5.fromJson(json['giveaways'] as Map<String, dynamic>),
      giveawaysOZ:
          NumberAndTop5.fromJson(json['giveawaysOZ'] as Map<String, dynamic>),
      giveawaysDZ:
          NumberAndTop5.fromJson(json['giveawaysDZ'] as Map<String, dynamic>),
      takesOZ: NumberAndTop5.fromJson(json['takesOZ'] as Map<String, dynamic>),
      takesDZ: NumberAndTop5.fromJson(json['takesDZ'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PuckBattleRowToJson(PuckBattleRow instance) =>
    <String, dynamic>{
      'student': instance.student,
      'takeaways': instance.takeaways,
      'takeawaysOZ': instance.takeawaysOZ,
      'takeawaysDZ': instance.takeawaysDZ,
      'giveaways': instance.giveaways,
      'giveawaysOZ': instance.giveawaysOZ,
      'giveawaysDZ': instance.giveawaysDZ,
      'takesOZ': instance.takesOZ,
      'takesDZ': instance.takesDZ,
    };
