part of 'stats_players_puck_battle_bloc.dart';

abstract class StatsPlayersPuckBattleEvent extends Equatable {
  const StatsPlayersPuckBattleEvent();
}

class StatsPlayersPuckBattleGet extends StatsPlayersPuckBattleEvent {
  final List<String> statisticsIds;

  const StatsPlayersPuckBattleGet(this.statisticsIds);

  final tab = PlayersStats.puckBattle;

  @override
  List<Object> get props => [statisticsIds, tab];
}
