import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../../core/utils/sort.dart';
import 'filter_player.dart';

part 'players_filter.g.dart';

@JsonSerializable()
class PlayersFilter extends Equatable {
  final List<FilterPlayer> players;
  final bool weAtHome;
  final bool winByOT;
  @JsonKey(name: 'winByBuls')
  final bool winByBullitts;

  const PlayersFilter({
    required this.players,
    required this.weAtHome,
    required this.winByOT,
    required this.winByBullitts,
  });

  @override
  List<Object> get props => [players, weAtHome, winByOT, winByBullitts];

  static List<FilterPlayer> _sortPlayers(List json) =>
      Sort.players(json, FilterPlayer.fromJson)
          .map((e) => e as FilterPlayer)
          .toList(growable: false);

  factory PlayersFilter.fromJson(Map<String, dynamic> json) => PlayersFilter(
        players: _sortPlayers(json['players']),
        weAtHome: json['weAtHome'] as bool,
        winByOT: json['winByOT'] as bool,
        winByBullitts: json['winByBuls'] as bool,
      );

  Map<String, dynamic> toJson() => _$PlayersFilterToJson(this);
}
