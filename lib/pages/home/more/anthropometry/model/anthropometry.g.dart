// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String?,
      playerNumber: json['playerNumber'] as String,
      params: (json['params'] as List<dynamic>)
          .map((e) => Param.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'playerNumber': instance.playerNumber,
      'params': instance.params,
    };

_$ParamImpl _$$ParamImplFromJson(Map<String, dynamic> json) => _$ParamImpl(
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      caliperometry: (json['caliperometry'] as num).toDouble(),
      date: Time.stampToDate(json['date'] as int),
      warnings: Warnings.fromJson(json['warnings'] as Map<String, dynamic>),
      bmi: (json['bmi'] as num).toDouble(),
    );

Map<String, dynamic> _$$ParamImplToJson(_$ParamImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'caliperometry': instance.caliperometry,
      'date': Time.dateToStamp(instance.date),
      'warnings': instance.warnings,
      'bmi': instance.bmi,
    };

_$WarningsImpl _$$WarningsImplFromJson(Map<String, dynamic> json) =>
    _$WarningsImpl(
      increaseHeightMoreFivePerSixMonth:
          json['increaseHeightMoreFivePerSixMonth'] as bool,
      decreaseHeightLessFivePerSixMonth:
          json['decreaseHeightLessFivePerSixMonth'] as bool,
      increaseWeightMoreFivePerSixMonth:
          json['increaseWeightMoreFivePerSixMonth'] as bool,
      decreaseWeightLessFivePerSixMonth:
          json['decreaseWeightLessFivePerSixMonth'] as bool,
      increaseFatMoreFivePerSixMonth:
          json['increaseFatMoreFivePerSixMonth'] as bool,
      decreaseFatLessFivePerSixMonth:
          json['decreaseFatLessFivePerSixMonth'] as bool,
    );

Map<String, dynamic> _$$WarningsImplToJson(_$WarningsImpl instance) =>
    <String, dynamic>{
      'increaseHeightMoreFivePerSixMonth':
          instance.increaseHeightMoreFivePerSixMonth,
      'decreaseHeightLessFivePerSixMonth':
          instance.decreaseHeightLessFivePerSixMonth,
      'increaseWeightMoreFivePerSixMonth':
          instance.increaseWeightMoreFivePerSixMonth,
      'decreaseWeightLessFivePerSixMonth':
          instance.decreaseWeightLessFivePerSixMonth,
      'increaseFatMoreFivePerSixMonth': instance.increaseFatMoreFivePerSixMonth,
      'decreaseFatLessFivePerSixMonth': instance.decreaseFatLessFivePerSixMonth,
    };
