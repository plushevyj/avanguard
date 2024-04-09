// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_mkc_matches_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsMKCMatchesResponseDtoImpl
    _$$StatisticsMKCMatchesResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsMKCMatchesResponseDtoImpl(
          date: Time.stringToDate(json['date'] as String),
          resultIndicator: json['resultIndicator'] as String,
          score: (json['score'] as List<dynamic>).map((e) => e as int).toList(),
          homeTeamName: json['homeTeamName'] as String,
          awayTeamName: json['awayTeamName'] as String,
          statisticId: json['statisticId'] as String,
          isActive: json['isActive'] as bool? ?? false,
        );

Map<String, dynamic> _$$StatisticsMKCMatchesResponseDtoImplToJson(
        _$StatisticsMKCMatchesResponseDtoImpl instance) =>
    <String, dynamic>{
      'date': Time.dateToString(instance.date),
      'resultIndicator': instance.resultIndicator,
      'score': instance.score,
      'homeTeamName': instance.homeTeamName,
      'awayTeamName': instance.awayTeamName,
      'statisticId': instance.statisticId,
      'isActive': instance.isActive,
    };
