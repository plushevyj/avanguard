// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsOverviewImpl _$$StatsOverviewImplFromJson(Map<String, dynamic> json) =>
    _$StatsOverviewImpl(
      halfScores: (json['halfsScores'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      teamNames:
          (json['teamNames'] as List<dynamic>).map((e) => e as String).toList(),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
      metrics: (json['metrics'] as List<dynamic>)
          .map((e) => PrimaryMetric.fromJson(e as Map<String, dynamic>))
          .toList(),
      weAtHome: json['weAtHome'] as bool,
      winByBullitts: json['winByBuls'] as bool,
      winByOT: json['winByOT'] as bool,
      teamLogo: json['teamLogo'] == null
          ? null
          : TeamLogo.fromJson(json['teamLogo'] as Map<String, dynamic>),
      protocol: json['protocol'] == null
          ? null
          : TeamProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsOverviewImplToJson(_$StatsOverviewImpl instance) =>
    <String, dynamic>{
      'halfsScores': instance.halfScores,
      'teamNames': instance.teamNames,
      'score': instance.score,
      'metrics': instance.metrics,
      'weAtHome': instance.weAtHome,
      'winByBuls': instance.winByBullitts,
      'winByOT': instance.winByOT,
      'teamLogo': instance.teamLogo,
      'protocol': instance.protocol,
    };

_$TeamLogoImpl _$$TeamLogoImplFromJson(Map<String, dynamic> json) =>
    _$TeamLogoImpl(
      home: json['home'] as String?,
      away: json['away'] as String?,
      homePercent: json['homePercent'] as int?,
      awayPercent: json['awayPercent'] as int?,
    );

Map<String, dynamic> _$$TeamLogoImplToJson(_$TeamLogoImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
      'homePercent': instance.homePercent,
      'awayPercent': instance.awayPercent,
    };

_$TeamProtocolImpl _$$TeamProtocolImplFromJson(Map<String, dynamic> json) =>
    _$TeamProtocolImpl(
      home: (json['home'] as List<dynamic>?)
          ?.map((e) => Protocol.fromJson(e as Map<String, dynamic>))
          .toList(),
      away: (json['away'] as List<dynamic>?)
          ?.map((e) => Protocol.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamProtocolImplToJson(_$TeamProtocolImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$ProtocolImpl _$$ProtocolImplFromJson(Map<String, dynamic> json) =>
    _$ProtocolImpl(
      playerName: json['playerName'] as String?,
      time: json['time'] as String?,
      isMajority: json['majority'] as bool,
      isMinority: json['minority'] as bool,
      isFinalGoal: json['isFinalGoal'] as bool,
      assists: (json['assists'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ))
          .toList(),
      isHome: json['isHome'] as bool? ?? true,
    );

Map<String, dynamic> _$$ProtocolImplToJson(_$ProtocolImpl instance) =>
    <String, dynamic>{
      'playerName': instance.playerName,
      'time': instance.time,
      'majority': instance.isMajority,
      'minority': instance.isMinority,
      'isFinalGoal': instance.isFinalGoal,
      'assists': instance.assists,
      'isHome': instance.isHome,
    };
