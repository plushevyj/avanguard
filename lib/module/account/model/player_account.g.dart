// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerAccountImpl _$$PlayerAccountImplFromJson(Map<String, dynamic> json) =>
    _$PlayerAccountImpl(
      objectId: json['objectId'] as String? ?? 'NO objectId !!!',
      firstName: json['firstName'] as String? ?? '-',
      lastName: json['lastName'] as String? ?? '-',
      middleName: json['middleName'] as String?,
      phone: json['phone'] as String? ?? '-',
      playerNumber: json['playerNumber'] as String? ?? '-',
      hockeyRole: RoleTranslator.toRu(json['hockeyRole'] as String?),
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      sessionToken: json['sessionToken'] as String,
    );

Map<String, dynamic> _$$PlayerAccountImplToJson(_$PlayerAccountImpl instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'phone': instance.phone,
      'playerNumber': instance.playerNumber,
      'hockeyRole': RoleTranslator.toEn(instance.hockeyRole),
      'email': instance.email,
      'avatar': instance.avatar,
      'group': instance.group,
      'sessionToken': instance.sessionToken,
    };
