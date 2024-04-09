import 'package:freezed_annotation/freezed_annotation.dart';

part 'players_lines.freezed.dart';

part 'players_lines.g.dart';

@freezed
class PlayersLines with _$PlayersLines {
  const PlayersLines._();

  const factory PlayersLines({
    // required String objectId,
    // required bool isActual,
    // required bool isFavorites,
    // String? favoritesName,
    // required String teamId,
    // required DateTime createdAt,
    required List<Line?>? playersLines,
    required List<LinePlayer?>? goaltendersLine,
  }) = _PlayersLines;

  factory PlayersLines.fromJson(Map<String, dynamic> json) =>
      _$PlayersLinesFromJson(json);

  bool? get isShow =>
      playersLines?.any((line) {
        var a = line?.wingersLine?.any((e) => e != null) ?? false;
        var b = line?.defensemansLine?.any((e) => e != null) ?? false;
        return a || b;
      });
}

@freezed
class Line with _$Line {
  const factory Line({
    required String? name,
    required List<LinePlayer?>? wingersLine,
    required List<LinePlayer?>? defensemansLine,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);
}

@freezed
class LinePlayer with _$LinePlayer {
  const factory LinePlayer({
    required String? id,
    required String? firstName,
    required String? avatar,
    required String? lastName,
    required String? status,
    required String? hand,
    required String? playerNumber,
  }) = _LinePlayer;

  factory LinePlayer.fromJson(Map<String, dynamic> json) =>
      _$LinePlayerFromJson(json);
}
