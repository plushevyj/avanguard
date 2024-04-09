part of 'stats_players_foul_bloc.dart';

abstract class StatsPlayersFoulEvent extends Equatable {
  const StatsPlayersFoulEvent();
}

class StatsPlayersFoulGet extends StatsPlayersFoulEvent {
  final List<String> statisticsIds;

  const StatsPlayersFoulGet(this.statisticsIds);

  final tab = PlayersStats.fouls;

  @override
  List<Object> get props => [statisticsIds, tab];
}
