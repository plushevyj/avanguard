// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playground.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playground _$PlaygroundFromJson(Map<String, dynamic> json) => Playground(
      home: (json['home'] as List<dynamic>)
          .map((e) => MatchMap.fromJson(e as Map<String, dynamic>))
          .toList(),
      away: (json['away'] as List<dynamic>)
          .map((e) => MatchMap.fromJson(e as Map<String, dynamic>))
          .toList(),
      weAtHome: json['weAtHome'] as bool,
      winByBullitts: json['winByBuls'] as bool,
      winByOvertime: json['winByOT'] as bool,
      showUnsuccessfulShotAttempts:
          json['showUnsuccessfullShotAttempts'] as bool,
    );

Map<String, dynamic> _$PlaygroundToJson(Playground instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
      'weAtHome': instance.weAtHome,
      'winByBuls': instance.winByBullitts,
      'winByOT': instance.winByOvertime,
      'showUnsuccessfullShotAttempts': instance.showUnsuccessfulShotAttempts,
    };
