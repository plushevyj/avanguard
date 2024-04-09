// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faceoffs_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaceoffsPlayerImpl _$$FaceoffsPlayerImplFromJson(Map<String, dynamic> json) =>
    _$FaceoffsPlayerImpl(
      id: json['id'] as int,
      win: json['win'] as int,
      lost: json['lost'] as int,
      percent: json['percent'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$FaceoffsPlayerImplToJson(
        _$FaceoffsPlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'win': instance.win,
      'lost': instance.lost,
      'percent': instance.percent,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
