part of 'stats_players_passes_bloc.dart';

abstract class StatsPlayersPassesEvent extends Equatable {
  const StatsPlayersPassesEvent();
}

class StatsPlayersPassesGet extends StatsPlayersPassesEvent {
  final List<String> statisticsIds;

  const StatsPlayersPassesGet(this.statisticsIds);

  final tab = PlayersStats.passes;

  @override
  List<Object> get props => [statisticsIds, tab];
}
