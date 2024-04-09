import 'package:freezed_annotation/freezed_annotation.dart';

import 'faceoffs_player.dart';

part 'faceoffs_players.freezed.dart';

part 'faceoffs_players.g.dart';

@Freezed()
class FaceoffsPlayers with _$FaceoffsPlayers {
  const factory FaceoffsPlayers({
    required List<FaceoffsPlayer> players,
  }) = _FaceoffsPlayers;

  factory FaceoffsPlayers.fromJson(Map<String, dynamic> map) =>
      _$FaceoffsPlayersFromJson(map);
}
