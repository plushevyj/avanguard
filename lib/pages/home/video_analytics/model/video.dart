import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'video.freezed.dart';

part 'video.g.dart';

@Freezed()
class Video with _$Video {
  const factory Video({
    required String? sId,
    required String? schoolId,
    required List? moments,
    required String? link,
    required String? name,
    required String? type,
    required List? hockeyRole,
    required List<String?>? teachersIds,
    required List? studentsIds,
    required List<String?>? groupsIds,
    required String? createdAt,
    required int? iV,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
