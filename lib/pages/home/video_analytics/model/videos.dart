import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'videos.freezed.dart';

part 'videos.g.dart';

@Freezed()
class Videos with _$Videos {
  const factory Videos({
    required int totalItems,
    required int itemsPerPage,
    required int totalPages,
    required List<VideoAnalytics> videoAnalytics,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}

@Freezed()
class VideoAnalytics with _$VideoAnalytics {
  const factory VideoAnalytics({
    required String id,
    required String name,
    required Tag? tag,
    required String link,
    required String createdAt,
    required bool isNew,
  }) = _VideoAnalytics;

  factory VideoAnalytics.fromJson(Map<String, dynamic> json) =>
      _$VideoAnalyticsFromJson(json);
}

@Freezed()
class Tag with _$Tag {
  const factory Tag({required String name, required String slug}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
