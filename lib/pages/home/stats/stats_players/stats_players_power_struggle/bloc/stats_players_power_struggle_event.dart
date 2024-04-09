part of 'stats_players_power_struggle_bloc.dart';

abstract class StatsPlayersPowerStruggleEvent extends Equatable {
  const StatsPlayersPowerStruggleEvent();
}

class StatsPlayersPowerStruggleGet extends StatsPlayersPowerStruggleEvent {
  final List<String> statisticsIds;

  const StatsPlayersPowerStruggleGet(this.statisticsIds);

  final tab = PlayersStats.powerStruggle;

  @override
  List<Object> get props => [statisticsIds, tab];
}
