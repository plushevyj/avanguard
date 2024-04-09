import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_faceoff_zone_item_dto.freezed.dart';

part 'statistics_faceoff_zone_item_dto.g.dart';

@freezed
class StatisticsFaceoffZoneItemDto with _$StatisticsFaceoffZoneItemDto {
  const StatisticsFaceoffZoneItemDto._();

  const factory StatisticsFaceoffZoneItemDto({
    required String? name,
    required num? home,
    required num? away,
    required num? percent,
  }) = _StatisticsFaceoffZoneItemDto;

  factory StatisticsFaceoffZoneItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFaceoffZoneItemDtoFromJson(json);
}
