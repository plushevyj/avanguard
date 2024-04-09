// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faceoff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Faceoff _$FaceoffFromJson(Map<String, dynamic> json) => Faceoff(
      homeTeamName: json['homeTeamName'] as String,
      awayTeamName: json['awayTeamName'] as String,
      home: json['home'] as int,
      away: json['away'] as int,
      homePercent: (json['homePercent'] as num).toDouble(),
      awayPercent: (json['awayPercent'] as num).toDouble(),
      DZ: json['DZ'] as String,
      OZ: json['OZ'] as String,
      weAtHome: json['weAtHome'] as bool,
      homeTeamLogo: json['homeTeamLogo'] as String,
      awayTeamLogo: json['awayTeamLogo'] as String,
    );

Map<String, dynamic> _$FaceoffToJson(Faceoff instance) => <String, dynamic>{
      'homeTeamName': instance.homeTeamName,
      'awayTeamName': instance.awayTeamName,
      'home': instance.home,
      'away': instance.away,
      'homePercent': instance.homePercent,
      'awayPercent': instance.awayPercent,
      'DZ': instance.DZ,
      'OZ': instance.OZ,
      'weAtHome': instance.weAtHome,
      'homeTeamLogo': instance.homeTeamLogo,
      'awayTeamLogo': instance.awayTeamLogo,
    };
