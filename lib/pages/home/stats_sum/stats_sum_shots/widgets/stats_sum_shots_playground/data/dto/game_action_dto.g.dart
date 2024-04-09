// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameActionDtoImpl _$$GameActionDtoImplFromJson(Map<String, dynamic> json) =>
    _$GameActionDtoImpl(
      name: json['name'] as String? ?? '-',
      engNameShort: json['engNameShort'] as String? ?? '-',
      playerName: json['playerName'] as String? ?? '-',
      time: json['time'] as String? ?? '-',
      posY: (json['posY'] as num?)?.toDouble() ?? .0,
      posX: (json['posX'] as num?)?.toDouble() ?? .0,
      opponentPosY: (json['opponentPosY'] as num?)?.toDouble() ?? .0,
      opponentPosX: (json['opponentPosX'] as num?)?.toDouble() ?? .0,
      weAtHome: json['weAtHome'] as bool?,
      isOur: json['isOur'] as bool?,
    );

Map<String, dynamic> _$$GameActionDtoImplToJson(_$GameActionDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'engNameShort': instance.engNameShort,
      'playerName': instance.playerName,
      'time': instance.time,
      'posY': instance.posY,
      'posX': instance.posX,
      'opponentPosY': instance.opponentPosY,
      'opponentPosX': instance.opponentPosX,
      'weAtHome': instance.weAtHome,
      'isOur': instance.isOur,
    };

_$GameActionNameDtoImpl _$$GameActionNameDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GameActionNameDtoImpl(
      name: json['name'] as String? ?? '-',
      engName: json['engName'] as String? ?? '-',
      engNameShort: json['engNameShort'] as String? ?? '-',
    );

Map<String, dynamic> _$$GameActionNameDtoImplToJson(
        _$GameActionNameDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'engName': instance.engName,
      'engNameShort': instance.engNameShort,
    };

_$VideoOffsetsImpl _$$VideoOffsetsImplFromJson(Map<String, dynamic> json) =>
    _$VideoOffsetsImpl(
      start: json['start'] as int? ?? 0,
      end: json['end'] as int? ?? 0,
    );

Map<String, dynamic> _$$VideoOffsetsImplToJson(_$VideoOffsetsImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
