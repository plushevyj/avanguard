// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkillEstimateImpl _$$SkillEstimateImplFromJson(Map<String, dynamic> json) =>
    _$SkillEstimateImpl(
      id: json['id'] as String?,
      skill: json['skill'] == null
          ? null
          : Skill.fromJson(json['skill'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      playerId: json['playerId'] as String?,
      todo: json['todo'] as String?,
      plan: json['plan'] as String?,
      controlDate: json['controlDate'] as String?,
      score: json['score'] as int?,
      expectedScore: json['expectedScore'] as int?,
      completedScore: json['completedScore'] as int?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$SkillEstimateImplToJson(_$SkillEstimateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skill': instance.skill,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'playerId': instance.playerId,
      'todo': instance.todo,
      'plan': instance.plan,
      'controlDate': instance.controlDate,
      'score': instance.score,
      'expectedScore': instance.expectedScore,
      'completedScore': instance.completedScore,
      'isCompleted': instance.isCompleted,
    };

_$SkillImpl _$$SkillImplFromJson(Map<String, dynamic> json) => _$SkillImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SkillImplToJson(_$SkillImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
