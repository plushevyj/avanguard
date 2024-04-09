final class VideoOffsets {
  final int start;
  final int end;

  const VideoOffsets([this.start = 0, this.end = 0]);

  VideoOffsets.fromJson(Map<String, dynamic> json)
      : start = json['start'] ?? 0,
        end = json['end'] ?? 0;

  Map<String, dynamic> toJson() => {
    'start': start,
    'end': end,
  };
}
