import '../../../../../core/utils/time.dart';
import '../../../domain/entity/video_fragment_link.dart';

class VideoFragmentLinkUi extends VideoFragmentLink {
  VideoFragmentLinkUi({
    required super.base,
    required super.start,
    required super.end,
    required super.videoOffsets,
  });

  String get startUi => start.secToHms;

  String? get endUi => end?.secToHms;

  String? get durationUi => end == null ? null : (end! - start).secToHms;

  static VideoFragmentLinkUi fromEntity(VideoFragmentLink link) =>
      VideoFragmentLinkUi(
        base: link.base,
        start: link.start,
        end: link.end,
        videoOffsets: link.videoOffsets,
      );
}
