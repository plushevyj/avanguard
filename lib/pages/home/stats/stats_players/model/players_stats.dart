import '../stats_players_corsi/model/corsi_row.dart';
import '../stats_players_deking/model/deking_row.dart';
import '../stats_players_fouls/model/foul_row.dart';
import '../stats_players_passes/model/passes_row.dart';
import '../stats_players_power_struggle/model/power_struggle_row.dart';
import '../stats_players_puck_battle/model/puck_battle_row.dart';
import '../stats_players_shots/model/shots_row.dart';
import '../stats_players_time/model/time_row.dart';
import 'classic_row.dart';

abstract class PlayersStats {
  static const classic = 'classic';
  static const time = 'time';
  static const shots = 'shots';
  static const dekings = 'dekings';
  static const fouls = 'fouls';
  static const passes = 'passes';
  static const puckBattle = 'puckBattle';
  static const powerStruggle = 'powerStruggle';
  static const corsi = 'corsi';

  static const types = [
    classic,
    time,
    shots,
    dekings,
    fouls,
    passes,
    puckBattle,
    powerStruggle,
    corsi,
  ];

  static const typesCtors = {
    classic: ClassicRow.fromJson,
    time: TimeRow.fromJson,
    shots: ShotsRow.fromJson,
    dekings: DekingRow.fromJson,
    fouls: FoulRow.fromJson,
    passes: PassesRow.fromJson,
    puckBattle: PuckBattleRow.fromJson,
    powerStruggle: PowerStruggleRow.fromJson,
    corsi: CorsiRow.fromJson,
  };
}
