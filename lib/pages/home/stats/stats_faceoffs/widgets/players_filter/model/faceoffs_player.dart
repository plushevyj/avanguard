import 'package:freezed_annotation/freezed_annotation.dart';

part 'faceoffs_player.freezed.dart';

part 'faceoffs_player.g.dart';

@Freezed()
class FaceoffsPlayer with _$FaceoffsPlayer {
  const factory FaceoffsPlayer({
    required int id,
    required int win,
    required int lost,
    required int percent,
    required String firstName,
    required String lastName,
  }) = _FaceoffsPlayer;

  factory FaceoffsPlayer.fromJson(Map<String, dynamic> map) =>
      _$FaceoffsPlayerFromJson(map);
}
