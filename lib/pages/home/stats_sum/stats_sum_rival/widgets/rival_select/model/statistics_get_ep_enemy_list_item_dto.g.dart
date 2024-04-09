// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_get_ep_enemy_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsGetEPEnemyListItemDtoImpl
    _$$StatisticsGetEPEnemyListItemDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsGetEPEnemyListItemDtoImpl(
          teamId: json['teamId'] as int,
          name: json['name'] as String,
          age: json['age'] as int,
          nextGameDate: json['nextGameDate'] as String,
        );

Map<String, dynamic> _$$StatisticsGetEPEnemyListItemDtoImplToJson(
        _$StatisticsGetEPEnemyListItemDtoImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'name': instance.name,
      'age': instance.age,
      'nextGameDate': instance.nextGameDate,
    };
