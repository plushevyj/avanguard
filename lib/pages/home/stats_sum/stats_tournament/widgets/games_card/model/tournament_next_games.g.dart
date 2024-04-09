// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_next_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MKCTablePageNextGameResponseDtoImpl
    _$$MKCTablePageNextGameResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$MKCTablePageNextGameResponseDtoImpl(
          games: (json['games'] as List<dynamic>?)
                  ?.map((e) => MKCTablePageNextGameItemDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$$MKCTablePageNextGameResponseDtoImplToJson(
        _$MKCTablePageNextGameResponseDtoImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
    };

_$MKCTablePageNextGameItemDtoImpl _$$MKCTablePageNextGameItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MKCTablePageNextGameItemDtoImpl(
      homeTeamName: json['homeTeamName'] as String,
      homeTeamLogo: json['homeTeamLogo'] as String,
      awayTeamName: json['awayTeamName'] as String,
      awayTeamLogo: json['awayTeamLogo'] as String,
      date: json['date'] as String,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$MKCTablePageNextGameItemDtoImplToJson(
        _$MKCTablePageNextGameItemDtoImpl instance) =>
    <String, dynamic>{
      'homeTeamName': instance.homeTeamName,
      'homeTeamLogo': instance.homeTeamLogo,
      'awayTeamName': instance.awayTeamName,
      'awayTeamLogo': instance.awayTeamLogo,
      'date': instance.date,
      'time': instance.time,
    };
