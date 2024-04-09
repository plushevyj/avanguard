part of 'stats_players_deking_bloc.dart';

abstract class StatsPlayersDekingEvent extends Equatable {
  const StatsPlayersDekingEvent();
}

class StatsPlayersDekingGet extends StatsPlayersDekingEvent {
  final List<String> statisticsIds;

  const StatsPlayersDekingGet(this.statisticsIds);

  final tab = PlayersStats.dekings;

  @override
  List<Object> get props => [statisticsIds, tab];
}
