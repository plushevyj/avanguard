// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PastGamesImpl _$$PastGamesImplFromJson(Map<String, dynamic> json) =>
    _$PastGamesImpl(
      games: (json['games'] as List<dynamic>)
          .map((e) => PastGame.fromJson(e as Map<String, dynamic>))
          .toList(),
      pages: json['pages'] as int,
      isLastPages: json['isLastPages'] as bool,
    );

Map<String, dynamic> _$$PastGamesImplToJson(_$PastGamesImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
      'pages': instance.pages,
      'isLastPages': instance.isLastPages,
    };
