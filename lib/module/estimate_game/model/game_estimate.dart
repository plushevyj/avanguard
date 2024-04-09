import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_estimate.freezed.dart';
part 'game_estimate.g.dart';

@freezed
class GameEstimate with _$GameEstimate {
  const factory GameEstimate({
    required Lesson lesson,
    // required Student student,
    required List<Parameter> parameters,
}) = _GameEstimate;

  factory GameEstimate.fromJson(Map<String, dynamic> json) =>
      _$GameEstimateFromJson(json);
}

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String name,
    required String fullName,
    required String opponent,
    required String type,
    required int startTimestamp,
    // required Group group,
    // required List<Room> rooms,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) =>
      _$LessonFromJson(json);
}

// @freezed
// class Group with _$Group {
//   const factory Group({
//     required String id,
//     required String name,
//     String? description,
//     required int studentsCount,
//     required String birthYear,
//     required String ageGroup,
//     required int avangardId,
//   }) = _Group;
//
//   factory Group.fromJson(Map<String, dynamic> json) =>
//       _$GroupFromJson(json);
// }

// @freezed
// class Room with _$Room {
//   const factory Room({
//     required String roomId,
//     required String name,
//     required int startTimestamp,
//     required int duration,
//   }) = _Room;
//
//   factory Room.fromJson(Map<String, dynamic> json) =>
//       _$RoomFromJson(json);
// }

// @freezed
// class Student with _$Student {
//   const factory Student({
//     required String id,
//     required String firstName,
//     required String lastName,
//     required String avatar,
//     required String playerNumber,
//     required String cityOfBirth,
//     required String hockeyRole,
//     required String hand,
//     required String status,
//     required String subStatus,
//     required int birthdayTimestamp,
//     required Group group,
//   }) = _Student;
//
//   factory Student.fromJson(Map<String, dynamic> json) =>
//       _$StudentFromJson(json);
// }

@unfreezed
class Parameter with _$Parameter {
  factory Parameter({
    required String id,
    required String name,
    int? value,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}



