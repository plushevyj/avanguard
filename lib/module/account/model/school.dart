import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.g.dart';
part 'school.freezed.dart';

@freezed
class School with _$School {
  const factory School({
     String? id,
    int? timestamp,
    int? updatedTimestamp,
    String? franchiseeId,
    String? name,
    String? description,
    String? city,
    String? address,
     List<String>? teachersIds,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> map) => _$SchoolFromJson(map);
}
