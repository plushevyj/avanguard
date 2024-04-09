import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gaps.dart';
import 'goal.dart';
import 'player.dart';
import 'shift.dart';

class MatchShifts extends Equatable {
  @JsonKey(fromJson: _parseShifts)
  final Map<String, List<Shift>> shifts;
  final List<Player> players;
  final List<Goal>? goals;
  final Gaps gaps;
  final bool weAtHome;
  @JsonKey(name: 'winByBuls')
  final bool winByBullitts;
  final bool winByOT;

  static Map<String, List<Shift>> _parseShifts(List json) {
    final shifts = <String, List<Shift>>{};
    if (json.isEmpty) return shifts;
    final temp = <Shift>[];
    var fio = json[0]['fullName'];
    for (final shift in json) {
      if (shift['fullName'] != fio) {
        shifts[fio] = [...temp]; // assign value, not reference
        temp.clear();
        fio = shift['fullName'];
      }
      temp.add(Shift.fromJson(shift));
    }
    shifts[temp.first.fullName] = temp; // assign last part
    return _sortShifts(shifts);
  }

  // 3 with min overplayed, 3 with max overplayed, rest from min to max
  static Map<String, List<Shift>> _sortShifts(Map<String, List<Shift>> shifts) {
    final sortedKeys = shifts.keys.toList()
      ..sort((k1, k2) => _byOverplayedPercent(shifts[k1]!, shifts[k2]!));
    final sortedValues = shifts.values.toList()
      ..sort((a, b) => _byOverplayedPercent(a, b));

    final last = sortedKeys.length - 1;
    for (var i = last - 2; i <= last; i++) {
      sortedKeys.insert(3, sortedKeys.removeAt(i));
      sortedValues.insert(3, sortedValues.removeAt(i));
    }

    return {for (final key in sortedKeys) key: shifts[key]!};
  }

  static int _byOverplayedPercent(List<Shift> a, List<Shift> b) {
    return _getOverplayedPercent(a).compareTo(_getOverplayedPercent(b));
  }

  static double _getOverplayedPercent(List<Shift> shifts) {
    int overplayed = 0;
    shifts.forEach((e) {
      if (e.isOverplayed) overplayed++;
    });
    return overplayed == 0 ? 0 : overplayed / shifts.length;
  }

  // Not all players have shifts, and they order did not match
  static List<Player> _parsePlayers(json) {
    final players = <Player>{};
    final allPlayers =
        (json['players'] as List).map((e) => Player.fromJson(e)).toSet();
    final ids = MatchShifts._parseShifts(json['shifts'] as List)
        .values
        .map((e) => e.first.value.first)
        .toList(growable: false);
    for (final id in ids) {
      for (final player in json['players']) {
        if (id == int.parse(player['value'])) {
          players.add(Player.fromJson(player));
        }
      }
    }
    players.addAll(allPlayers);
    return players.toList(growable: false);
  }

  const MatchShifts({
    required this.shifts,
    required this.players,
    required this.gaps,
    required this.weAtHome,
    required this.winByBullitts,
    required this.winByOT,
    this.goals,
  });

  @override
  List<Object?> get props => [
        shifts,
        players,
        gaps,
        weAtHome,
        winByBullitts,
        winByOT,
        goals,
      ];

  // factory MatchShifts.fromJson(Map<String, dynamic> map) =>
  //     _$MatchShiftsFromJson(map);

  MatchShifts.fromJson(Map<String, dynamic> json)
      : shifts = MatchShifts._parseShifts(json['shifts'] as List),
        players = MatchShifts._parsePlayers(json),
        goals = (json['goals'] as List?)
            ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
            .toList(),
        gaps = Gaps.fromJson(json['gaps'] as Map<String, dynamic>),
        weAtHome = json['weAtHome'] as bool,
        winByBullitts = json['winByBuls'] as bool,
        winByOT = json['winByOT'] as bool;
}
