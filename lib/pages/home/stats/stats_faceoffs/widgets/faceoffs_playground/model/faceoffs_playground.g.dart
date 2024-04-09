// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faceoffs_playground.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceoffsPlayground _$FaceoffsPlaygroundFromJson(Map<String, dynamic> json) =>
    FaceoffsPlayground(
      circleOne:
          FaceoffsScore.fromJson(json['circleOne'] as Map<String, dynamic>),
      circleTwo:
          FaceoffsScore.fromJson(json['circleTwo'] as Map<String, dynamic>),
      circleThree:
          FaceoffsScore.fromJson(json['circleThree'] as Map<String, dynamic>),
      circleFour:
          FaceoffsScore.fromJson(json['circleFour'] as Map<String, dynamic>),
      circleFive:
          FaceoffsScore.fromJson(json['circleFive'] as Map<String, dynamic>),
      circleSix:
          FaceoffsScore.fromJson(json['circleSix'] as Map<String, dynamic>),
      circleSeven:
          FaceoffsScore.fromJson(json['circleSeven'] as Map<String, dynamic>),
      circleEight:
          FaceoffsScore.fromJson(json['circleEight'] as Map<String, dynamic>),
      circleNine:
          FaceoffsScore.fromJson(json['circleNine'] as Map<String, dynamic>),
      zones: (json['zones'] as List<dynamic>)
          .map((e) =>
              StatisticsFaceoffZoneItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      weAtHome: json['weAtHome'] as bool,
    );

Map<String, dynamic> _$FaceoffsPlaygroundToJson(FaceoffsPlayground instance) =>
    <String, dynamic>{
      'circleOne': instance.circleOne,
      'circleTwo': instance.circleTwo,
      'circleThree': instance.circleThree,
      'circleFour': instance.circleFour,
      'circleFive': instance.circleFive,
      'circleSix': instance.circleSix,
      'circleSeven': instance.circleSeven,
      'circleEight': instance.circleEight,
      'circleNine': instance.circleNine,
      'zones': instance.zones,
      'weAtHome': instance.weAtHome,
    };
