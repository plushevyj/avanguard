part of 'stats_players_shots_bloc.dart';

abstract class StatsPlayersShotsEvent extends Equatable {
  const StatsPlayersShotsEvent();
}

class StatsPlayersShotsGet extends StatsPlayersShotsEvent {
  final List<String> statisticsIds;

  const StatsPlayersShotsGet(this.statisticsIds);

  final tab = PlayersStats.shots;

  @override
  List<Object> get props => [statisticsIds, tab];
}
