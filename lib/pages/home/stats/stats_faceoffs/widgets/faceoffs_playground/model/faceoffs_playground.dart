import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'faceoffs_score.dart';
import 'statistics_faceoff_zone_item_dto.dart';

part 'faceoffs_playground.g.dart';

@JsonSerializable()
class FaceoffsPlayground extends Equatable {
  final FaceoffsScore circleOne;
  final FaceoffsScore circleTwo;
  final FaceoffsScore circleThree;
  final FaceoffsScore circleFour;
  final FaceoffsScore circleFive;
  final FaceoffsScore circleSix;
  final FaceoffsScore circleSeven;
  final FaceoffsScore circleEight;
  final FaceoffsScore circleNine;
  final List<StatisticsFaceoffZoneItemDto> zones;
  final bool weAtHome;

  const FaceoffsPlayground({
    required this.circleOne,
    required this.circleTwo,
    required this.circleThree,
    required this.circleFour,
    required this.circleFive,
    required this.circleSix,
    required this.circleSeven,
    required this.circleEight,
    required this.circleNine,
    required this.zones,
    required this.weAtHome,
  });

  @override
  List<Object> get props => [
        circleOne,
        circleTwo,
        circleThree,
        circleFour,
        circleFive,
        circleSix,
        circleSeven,
        circleEight,
        circleNine,
        zones,
        weAtHome,
      ];

  factory FaceoffsPlayground.fromJson(Map<String, dynamic> map) =>
      _$FaceoffsPlaygroundFromJson(map);

  Map<String, dynamic> toJson() => _$FaceoffsPlaygroundToJson(this);
}
