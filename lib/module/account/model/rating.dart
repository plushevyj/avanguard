import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.g.dart';

part 'rating.freezed.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    String? rating,
    String? gameRating,
    String? estimateRating,
    int? physicalRating,
    String? statisticRating,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> map) => _$RatingFromJson(map);
}
