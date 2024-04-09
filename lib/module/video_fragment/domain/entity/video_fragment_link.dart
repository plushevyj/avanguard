import '../../../../core/utils/video_utils.dart';
import 'video_offsets.dart';

class VideoFragmentLink {
  final String base;
  final int start;
  final int? end;
  final VideoOffsets videoOffsets;

  const VideoFragmentLink({
    required this.base,
    required this.start,
    required this.end,
    required this.videoOffsets,
  });

  String get uri =>
      '${VideoUtils.toEmbeddedUrl(base)}${_startEndTime(start, end)}';

  String _startEndTime(int start, int? end) =>
      '${_startTime(start)}${_endTime(end)}';

  String _startTime(int? start) =>
      start == null ? '' : '?start=${start - videoOffsets.start}';

  String _endTime(int? end) =>
      end == null ? '' : '&end=${end + videoOffsets.end}';
}
