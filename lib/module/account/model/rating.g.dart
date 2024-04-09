// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      rating: json['rating'] as String?,
      gameRating: json['gameRating'] as String?,
      estimateRating: json['estimateRating'] as String?,
      physicalRating: json['physicalRating'] as int?,
      statisticRating: json['statisticRating'] as String?,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'gameRating': instance.gameRating,
      'estimateRating': instance.estimateRating,
      'physicalRating': instance.physicalRating,
      'statisticRating': instance.statisticRating,
    };
