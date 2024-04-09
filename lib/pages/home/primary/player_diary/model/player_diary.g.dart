// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDiaryImpl _$$PlayerDiaryImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDiaryImpl(
      date: Time.stringToDate(json['date'] as String),
      userId: json['userId'] as String?,
      id: json['id'] as String?,
      morning: json['morning'] == null
          ? null
          : Morning.fromJson(json['morning'] as Map<String, dynamic>),
      trainingGroup: json['trainingGroup'] == null
          ? null
          : TrainingGroup.fromJson(
              json['trainingGroup'] as Map<String, dynamic>),
      trainingIndividual: json['trainingIndividual'] == null
          ? null
          : TrainingIndividual.fromJson(
              json['trainingIndividual'] as Map<String, dynamic>),
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayerDiaryImplToJson(_$PlayerDiaryImpl instance) =>
    <String, dynamic>{
      'date': Time.dateToString(instance.date),
      'userId': instance.userId,
      'id': instance.id,
      'morning': instance.morning,
      'trainingGroup': instance.trainingGroup,
      'trainingIndividual': instance.trainingIndividual,
      'game': instance.game,
    };

_$MorningImpl _$$MorningImplFromJson(Map<String, dynamic> json) =>
    _$MorningImpl(
      id: json['id'] as String?,
      sleep: json['sleep'] as int?,
      mood: json['mood'] as int?,
      willToTraining: json['willToTraining'] as int?,
      isDayOff: json['isDayOff'] as bool? ?? false,
    );

Map<String, dynamic> _$$MorningImplToJson(_$MorningImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sleep': instance.sleep,
      'mood': instance.mood,
      'willToTraining': instance.willToTraining,
      'isDayOff': instance.isDayOff,
    };

_$TrainingGroupImpl _$$TrainingGroupImplFromJson(Map<String, dynamic> json) =>
    _$TrainingGroupImpl(
      id: json['id'] as String?,
      gymMood: json['gymMood'] as int?,
      gymHealth: json['gymHealth'] as int?,
      iceMood: json['iceMood'] as int?,
      iceHealth: json['iceHealth'] as int?,
      skillMood: json['skillMood'] as int?,
      skillHealth: json['skillHealth'] as int?,
      isDayOff: json['isDayOff'] as bool? ?? false,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainingGroupImplToJson(_$TrainingGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gymMood': instance.gymMood,
      'gymHealth': instance.gymHealth,
      'iceMood': instance.iceMood,
      'iceHealth': instance.iceHealth,
      'skillMood': instance.skillMood,
      'skillHealth': instance.skillHealth,
      'isDayOff': instance.isDayOff,
      'comments': instance.comments,
    };

_$TrainingIndividualImpl _$$TrainingIndividualImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingIndividualImpl(
      id: json['id'] as String?,
      gymMood: json['gymMood'] as int?,
      gymHealth: json['gymHealth'] as int?,
      iceMood: json['iceMood'] as int?,
      iceHealth: json['iceHealth'] as int?,
      skillMood: json['skillMood'] as int?,
      skillHealth: json['skillHealth'] as int?,
      isDayOff: json['isDayOff'] as bool? ?? false,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainingIndividualImplToJson(
        _$TrainingIndividualImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gymMood': instance.gymMood,
      'gymHealth': instance.gymHealth,
      'iceMood': instance.iceMood,
      'iceHealth': instance.iceHealth,
      'skillMood': instance.skillMood,
      'skillHealth': instance.skillHealth,
      'isDayOff': instance.isDayOff,
      'comments': instance.comments,
    };

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String?,
      activity: json['activity'] as int?,
      stress: json['stress'] as int?,
      health: json['health'] as int?,
      attention: json['attention'] as int?,
      feelingIceAndGoal: json['fellingIceAndGoal'] as int?,
      communicationWithTrainer: json['comunicationWithTrainer'] as int?,
      selfScore: json['selfScore'] as int?,
      isDayOff: json['isDayOff'] as bool? ?? false,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activity': instance.activity,
      'stress': instance.stress,
      'health': instance.health,
      'attention': instance.attention,
      'fellingIceAndGoal': instance.feelingIceAndGoal,
      'comunicationWithTrainer': instance.communicationWithTrainer,
      'selfScore': instance.selfScore,
      'isDayOff': instance.isDayOff,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      comment: json['comment'] as String?,
      date: Time.stringToDate(json['date'] as String),
      estimate: json['estimate'] == null
          ? null
          : PlayerEstimate.fromJson(json['estimate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'date': Time.dateToString(instance.date),
      'estimate': instance.estimate,
    };

_$PlayerEstimateImpl _$$PlayerEstimateImplFromJson(Map<String, dynamic> json) =>
    _$PlayerEstimateImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PlayerEstimateImplToJson(
        _$PlayerEstimateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
