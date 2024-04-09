import 'package:freezed_annotation/freezed_annotation.dart';


part 'group.g.dart';

part 'group.freezed.dart';

@freezed
class Group with _$Group {
  const factory Group({
    // List<String>? teachersIds,
    // String? name,
    // String? description,
    // String? schoolId,
    // String? franchiseeId,
    // DateTime? createdAt,
    // DateTime? updatedAt,
    // List<String>? studentsIds,
    // String? achievement,
    // String? birthYear,
    // String? assistanId,
    // School? school,
    // int? icebergId,
    // bool? active,
    // String? instatId,
    // String? objectId,
    String? id,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> map) => _$GroupFromJson(map);
}
