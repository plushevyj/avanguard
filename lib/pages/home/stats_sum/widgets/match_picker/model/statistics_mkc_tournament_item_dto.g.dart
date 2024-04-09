// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_mkc_tournament_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsMKCTournamentItemDtoImpl
    _$$StatisticsMKCTournamentItemDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsMKCTournamentItemDtoImpl(
          tournamentId: json['tournamentId'] as int,
          name: json['name'] as String,
          groupName: json['groupName'] as String,
          isFinal: json['isFinal'] as bool,
        );

Map<String, dynamic> _$$StatisticsMKCTournamentItemDtoImplToJson(
        _$StatisticsMKCTournamentItemDtoImpl instance) =>
    <String, dynamic>{
      'tournamentId': instance.tournamentId,
      'name': instance.name,
      'groupName': instance.groupName,
      'isFinal': instance.isFinal,
    };
