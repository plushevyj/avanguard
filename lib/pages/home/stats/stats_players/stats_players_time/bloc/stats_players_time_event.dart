part of 'stats_players_time_bloc.dart';

abstract class StatsPlayersTimeEvent extends Equatable {
  const StatsPlayersTimeEvent();
}

class StatsPlayersTimeGet extends StatsPlayersTimeEvent {
  final List<String> statisticsIds;

  const StatsPlayersTimeGet(this.statisticsIds);

  final tab = PlayersStats.time;

  @override
  List<Object> get props => [statisticsIds, tab];
}
