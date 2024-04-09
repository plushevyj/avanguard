// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsMKCTalbePagePlayersBlockWDItemDtoImpl
    _$$StatisticsMKCTalbePagePlayersBlockWDItemDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StatisticsMKCTalbePagePlayersBlockWDItemDtoImpl(
          score: StatisticsMKCPlayersTopItemDto.fromJson(
              json['score'] as Map<String, dynamic>),
          goals: StatisticsMKCPlayersTopItemDto.fromJson(
              json['goals'] as Map<String, dynamic>),
          assists: StatisticsMKCPlayersTopItemDto.fromJson(
              json['assists'] as Map<String, dynamic>),
          plusMinus: StatisticsMKCPlayersTopItemDto.fromJson(
              json['plusMinus'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StatisticsMKCTalbePagePlayersBlockWDItemDtoImplToJson(
        _$StatisticsMKCTalbePagePlayersBlockWDItemDtoImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'goals': instance.goals,
      'assists': instance.assists,
      'plusMinus': instance.plusMinus,
    };

_$StatisticsMKCPlayersTopItemDtoImpl
    _$$StatisticsMKCPlayersTopItemDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsMKCPlayersTopItemDtoImpl(
          topFive: (json['topFive'] as List<dynamic>?)
              ?.map((e) => StatisticsMKCPlayersStatItemDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          ourTopFive: (json['ourTopFive'] as List<dynamic>?)
              ?.map((e) => StatisticsMKCPlayersStatItemDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$StatisticsMKCPlayersTopItemDtoImplToJson(
        _$StatisticsMKCPlayersTopItemDtoImpl instance) =>
    <String, dynamic>{
      'topFive': instance.topFive,
      'ourTopFive': instance.ourTopFive,
    };

_$StatisticsMKCPlayersStatItemDtoImpl
    _$$StatisticsMKCPlayersStatItemDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsMKCPlayersStatItemDtoImpl(
          isOurPlayer: json['isOurPlayer'] as bool?,
          position: json['position'] as num,
          firstName: json['firstName'] as String,
          lastName: json['lastName'] as String,
          playerNumber: json['playerNumber'] as num,
          avatar: json['avatar'] as String,
          markAsBest: json['markAsBest'] as bool,
          value: json['value'] as num,
          teamLogo: json['teamLogo'] as String,
        );

Map<String, dynamic> _$$StatisticsMKCPlayersStatItemDtoImplToJson(
        _$StatisticsMKCPlayersStatItemDtoImpl instance) =>
    <String, dynamic>{
      'isOurPlayer': instance.isOurPlayer,
      'position': instance.position,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'playerNumber': instance.playerNumber,
      'avatar': instance.avatar,
      'markAsBest': instance.markAsBest,
      'value': instance.value,
      'teamLogo': instance.teamLogo,
    };

_$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoImpl
    _$$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoImpl(
          savePercent: StatisticsMKCPlayersTopItemDto.fromJson(
              json['savePercent'] as Map<String, dynamic>),
          safetyFactor: StatisticsMKCPlayersTopItemDto.fromJson(
              json['safetyFactor'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoImplToJson(
        _$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoImpl instance) =>
    <String, dynamic>{
      'savePercent': instance.savePercent,
      'safetyFactor': instance.safetyFactor,
    };
