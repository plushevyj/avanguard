import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_estimate.freezed.dart';

part 'skill_estimate.g.dart';

@freezed
class SkillEstimate with _$SkillEstimate {
  const factory SkillEstimate({
    String? id,
    // Student? student,
    // List<Specialist>? specialists,
    Skill? skill,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? playerId,
    String? todo,
    String? plan,
    String? controlDate,
    int? score,
    int? expectedScore,
    int? completedScore,
    bool? isCompleted,
  }) = _SkillEstimate;

  factory SkillEstimate.fromJson(Map<String, dynamic> json) =>
      _$SkillEstimateFromJson(json);
}

// @freezed
// class Student with _$Student {
//   const factory Student({
//     String? id,
//     String? firstName,
//     String? lastName,
//     String? avatar,
//     String? playerNumber,
//     String? cityOfBirth,
//     String? hockeyRole,
//     String? hand,
//     String? status,
//     String? subStatus,
//     int? birthdayTimestamp,
//     Group? group,
//   }) = _Student;
//
//   factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
// }
//
// @freezed
// class Specialist with _$Specialist {
//   const factory Specialist({
//     required String id,
//     required String firstName,
//     // ... add all other fields similarly like in the Student model.
//     required Group group,
//   }) = _Specialist;
//
//   factory Specialist.fromJson(Map<String, dynamic> json) => _$SpecialistFromJson(json);
// }
//
// @freezed
// class Group with _$Group {
//   const factory Group({
//     required String id,
//     required String name,
//     required String description,
//     required int studentsCount,
//     required String birthYear,
//     required String ageGroup,
//     required int avangardId,
//     required School school,
//   }) = _Group;
//
//   factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
// }
//
// @freezed
// class School with _$School {
//   const factory School({
//     required String id,
//     required String name,
//   }) = _School;
//
//   factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
// }

@freezed
class Skill with _$Skill {
  const factory Skill({
    required String name,
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Category category,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String name,
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
