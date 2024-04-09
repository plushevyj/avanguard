// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_action_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameActionTypeDtoImpl _$$GameActionTypeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GameActionTypeDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      engNameShort: json['engNameShort'] as String,
    );

Map<String, dynamic> _$$GameActionTypeDtoImplToJson(
        _$GameActionTypeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'engNameShort': instance.engNameShort,
    };
