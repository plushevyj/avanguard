// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_classic_tab_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsClassicTabItemDtoImpl _$$StatisticsClassicTabItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsClassicTabItemDtoImpl(
      student: StatisticsTabStudentItemDto.fromJson(
          json['student'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : NumberAndTop5.fromJson(json['score'] as Map<String, dynamic>),
      goals: json['goals'] == null
          ? null
          : NumberAndTop5.fromJson(json['goals'] as Map<String, dynamic>),
      assists: json['assists'] == null
          ? null
          : NumberAndTop5.fromJson(json['assists'] as Map<String, dynamic>),
      plusMinus: json['plusMinus'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['plusMinus'] as Map<String, dynamic>),
      plus: json['plus'] as num?,
      minus: json['minus'] as num?,
      blockedShots: json['blockedShots'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['blockedShots'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsClassicTabItemDtoImplToJson(
        _$StatisticsClassicTabItemDtoImpl instance) =>
    <String, dynamic>{
      'student': instance.student,
      'score': instance.score,
      'goals': instance.goals,
      'assists': instance.assists,
      'plusMinus': instance.plusMinus,
      'plus': instance.plus,
      'minus': instance.minus,
      'blockedShots': instance.blockedShots,
    };

_$StatisticsTabStudentItemDtoImpl _$$StatisticsTabStudentItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsTabStudentItemDtoImpl(
      id: json['id'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String?,
      hockeyRole: json['hockeyRole'] as String?,
      playerNumber: json['playerNumber'] as int,
      teamLogo: json['teamLogo'] as String?,
      gamesCount: json['gamesCount'] as int?,
    );

Map<String, dynamic> _$$StatisticsTabStudentItemDtoImplToJson(
        _$StatisticsTabStudentItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'hockeyRole': instance.hockeyRole,
      'playerNumber': instance.playerNumber,
      'teamLogo': instance.teamLogo,
      'gamesCount': instance.gamesCount,
    };
