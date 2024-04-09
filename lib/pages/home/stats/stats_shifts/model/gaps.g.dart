// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gaps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gaps _$GapsFromJson(Map<String, dynamic> json) => Gaps(
      majority: (json['majority'] as List<dynamic>?)
          ?.map((e) => ShiftsGap.fromJson(e as Map<String, dynamic>))
          .toList(),
      minority: (json['minority'] as List<dynamic>?)
          ?.map((e) => ShiftsGap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GapsToJson(Gaps instance) => <String, dynamic>{
      'majority': Gaps._toJson(instance.majority),
      'minority': Gaps._toJson(instance.minority),
    };
