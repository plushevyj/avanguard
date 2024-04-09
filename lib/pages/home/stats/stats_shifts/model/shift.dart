import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/utils/time.dart';
import '../../../../../module/video_fragment/domain/entity/video_offsets.dart';

class Shift extends Equatable {
  final String fullName;
  @JsonKey(fromJson: _toInts)
  final List<int> value;
  final String? linkToVideo;
  final String? videoTime;
  final bool isOverplayed;
  final VideoOffsets? videoOffsets;

  static List<int> _toInts(List json) {
    return json.map((e) => num.parse(e).round()).toList();
  }

  Shift({
    required this.fullName,
    required this.value,
    this.linkToVideo,
    this.videoTime,
    this.videoOffsets,
  }) : isOverplayed = value[3] / msInMin >= 1 ? true : false;

  @override
  List<Object?> get props => [fullName, value, linkToVideo, videoTime];

  Shift.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'] as String,
        value = Shift._toInts(json['value'] as List),
        linkToVideo = json['linkToVideo'] as String?,
        videoTime = json['videoTime'] as String?,
        videoOffsets = VideoOffsets.fromJson(json['videoOffsets'] as Map<String, dynamic>),
        isOverplayed =
            num.parse(json['value'][3]) / msInMin >= 1 ? true : false;
}
