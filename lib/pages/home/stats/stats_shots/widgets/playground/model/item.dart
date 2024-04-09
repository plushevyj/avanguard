import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../../module/video_fragment/domain/entity/video_offsets.dart';

part 'item.g.dart';

@JsonSerializable()
class Item extends Equatable {
  final String player;
  final String time;
  final double posX;
  final double posY;
  final String type;
  final String name;
  final String? linkToVideo;
  final String? videoTime;
  final VideoOffsets? videoOffsets;

  const Item({
    required this.player,
    required this.time,
    required this.posX,
    required this.posY,
    required this.type,
    required this.name,
    this.linkToVideo,
    this.videoTime,
    this.videoOffsets,
  });

  @override
  List<Object?> get props => [
        player,
        time,
        posX,
        posY,
        type,
        name,
        linkToVideo,
        videoTime,
        videoOffsets,
      ];

  factory Item.fromJson(Map<String, dynamic> map) => _$ItemFromJson(map);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
