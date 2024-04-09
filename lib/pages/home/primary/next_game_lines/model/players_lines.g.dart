// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_lines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayersLinesImpl _$$PlayersLinesImplFromJson(Map<String, dynamic> json) =>
    _$PlayersLinesImpl(
      playersLines: (json['playersLines'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Line.fromJson(e as Map<String, dynamic>))
          .toList(),
      goaltendersLine: (json['goaltendersLine'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : LinePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayersLinesImplToJson(_$PlayersLinesImpl instance) =>
    <String, dynamic>{
      'playersLines': instance.playersLines,
      'goaltendersLine': instance.goaltendersLine,
    };

_$LineImpl _$$LineImplFromJson(Map<String, dynamic> json) => _$LineImpl(
      name: json['name'] as String?,
      wingersLine: (json['wingersLine'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : LinePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      defensemansLine: (json['defensemansLine'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : LinePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LineImplToJson(_$LineImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wingersLine': instance.wingersLine,
      'defensemansLine': instance.defensemansLine,
    };

_$LinePlayerImpl _$$LinePlayerImplFromJson(Map<String, dynamic> json) =>
    _$LinePlayerImpl(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      avatar: json['avatar'] as String?,
      lastName: json['lastName'] as String?,
      status: json['status'] as String?,
      hand: json['hand'] as String?,
      playerNumber: json['playerNumber'] as String?,
    );

Map<String, dynamic> _$$LinePlayerImplToJson(_$LinePlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'avatar': instance.avatar,
      'lastName': instance.lastName,
      'status': instance.status,
      'hand': instance.hand,
      'playerNumber': instance.playerNumber,
    };
