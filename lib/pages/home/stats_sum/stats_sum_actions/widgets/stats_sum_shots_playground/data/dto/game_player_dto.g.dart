// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamePlayerDtoImpl _$$GamePlayerDtoImplFromJson(Map<String, dynamic> json) =>
    _$GamePlayerDtoImpl(
      avangardId: json['avangardId'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      hockeyRole: RoleTranslator.toRu(json['hockeyRole'] as String?),
      shotsCount: json['shotsCount'] as int? ?? -1,
    );

Map<String, dynamic> _$$GamePlayerDtoImplToJson(_$GamePlayerDtoImpl instance) =>
    <String, dynamic>{
      'avangardId': instance.avangardId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'hockeyRole': RoleTranslator.toEn(instance.hockeyRole),
      'shotsCount': instance.shotsCount,
    };
