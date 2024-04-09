import '../../../../core/utils/time.dart';
import '../../../../pages/home/stats/stats_shifts/model/shift.dart';
import '../../../../pages/home/stats/stats_shots/widgets/playground/model/item.dart';
import '../../domain/entity/video_fragment_link.dart';
import '../../domain/entity/video_offsets.dart';

class VideoFragmentLinkDto extends VideoFragmentLink {
  const VideoFragmentLinkDto({
    required super.base,
    required super.start,
    required super.end,
    required super.videoOffsets,
  });

  factory VideoFragmentLinkDto.fromShift(Shift shift) => VideoFragmentLinkDto(
        base: shift.linkToVideo ?? 'No Link',
        start: startTimeFromShift(shift),
        end: endTimeFromShift(shift),
        videoOffsets: shift.videoOffsets ?? const VideoOffsets(),
      );

  factory VideoFragmentLinkDto.fromItem(Item item) => VideoFragmentLinkDto(
        base: item.linkToVideo ?? 'No Link',
        start: startTimeFromItem(item),
        end: endTimeFromItem(item),
        videoOffsets: item.videoOffsets ?? const VideoOffsets(),
      );

  static int startTimeFromShift(Shift shift) =>
      (shift.videoTime?.hmsToSec ?? 0) +
      shift.value[1].msToSec -
      (shift.videoOffsets?.start ?? 0);

  static int endTimeFromShift(Shift shift) =>
      (shift.videoTime?.hmsToSec ?? 0) +
      shift.value[2].msToSec +
      (shift.videoOffsets?.end ?? 0);

  static int startTimeFromItem(Item item) =>
      (item.videoTime?.hmsToSec ?? 0) +
      item.time.hmsToSec -
      (item.videoOffsets?.start ?? 0);

  static int endTimeFromItem(Item item) =>
      (item.videoTime?.hmsToSec ?? 0) +
          item.time.hmsToSec -
          (item.videoOffsets?.start ?? 0);

  static VideoFragmentLinkDto fromEntity(VideoFragmentLink link) =>
      VideoFragmentLinkDto(
        base: link.base,
        start: link.start,
        end: link.end,
        videoOffsets: link.videoOffsets,
      );

  static VideoFragmentLink fromDto(VideoFragmentLinkDto dto) {
    return VideoFragmentLink(
      base: dto.base,
      start: dto.start,
      end: dto.end,
      videoOffsets: dto.videoOffsets,
    );
  }
}
