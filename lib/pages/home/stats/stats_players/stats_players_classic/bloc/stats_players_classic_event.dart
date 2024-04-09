part of 'stats_players_classic_bloc.dart';

abstract class StatsPlayersClassicEvent extends Equatable {
  const StatsPlayersClassicEvent();
}

class StatsPlayersClassicGet extends StatsPlayersClassicEvent {
  final List<String> statisticsIds;

  const StatsPlayersClassicGet(this.statisticsIds);

  final tab = PlayersStats.classic;

  @override
  List<Object> get props => [statisticsIds, tab];
}
