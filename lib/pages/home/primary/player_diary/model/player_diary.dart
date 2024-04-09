import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/time.dart';

part 'player_diary.freezed.dart';

part 'player_diary.g.dart';

@freezed
class PlayerDiary with _$PlayerDiary {
  const factory PlayerDiary({
    @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
    required DateTime date,
    String? userId,
    String? id,
    Morning? morning,
    TrainingGroup? trainingGroup,
    TrainingIndividual? trainingIndividual,
    Game? game,
  }) = _PlayerDiary;

  factory PlayerDiary.fromJson(Map<String, dynamic> json) =>
      _$PlayerDiaryFromJson(json);
}

@freezed
class Morning with _$Morning {
  const factory Morning({
    String? id,
    int? sleep,
    int? mood,
    int? willToTraining,
    @Default(false) bool isDayOff,
  }) = _Morning;

  factory Morning.fromJson(Map<String, dynamic> json) =>
      _$MorningFromJson(json);
}

@freezed
class TrainingGroup with _$TrainingGroup {
  const factory TrainingGroup({
    String? id,
    int? gymMood,
    int? gymHealth,
    int? iceMood,
    int? iceHealth,
    int? skillMood,
    int? skillHealth,
    @Default(false) bool isDayOff,
    List<Comment?>? comments,
  }) = _TrainingGroup;

  factory TrainingGroup.fromJson(Map<String, dynamic> json) =>
      _$TrainingGroupFromJson(json);
}

@freezed
class TrainingIndividual with _$TrainingIndividual {
  const factory TrainingIndividual({
    String? id,
    int? gymMood,
    int? gymHealth,
    int? iceMood,
    int? iceHealth,
    int? skillMood,
    int? skillHealth,
    @Default(false) bool isDayOff,
    List<Comment?>? comments,
  }) = _TrainingIndividual;

  factory TrainingIndividual.fromJson(Map<String, dynamic> json) =>
      _$TrainingIndividualFromJson(json);
}

@freezed
class Game with _$Game {
  const factory Game({
    String? id,
    int? activity,
    int? stress,
    int? health,
    int? attention,
    @JsonKey(name: 'fellingIceAndGoal') int? feelingIceAndGoal,
    @JsonKey(name: 'comunicationWithTrainer') int? communicationWithTrainer,
    int? selfScore,
    @Default(false) bool isDayOff,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    String? comment,
    @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
    DateTime? date,
    PlayerEstimate? estimate,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class PlayerEstimate with _$PlayerEstimate {
  const factory PlayerEstimate({String? id}) = _PlayerEstimate;

  factory PlayerEstimate.fromJson(Map<String, dynamic> json) =>
      _$PlayerEstimateFromJson(json);
}
