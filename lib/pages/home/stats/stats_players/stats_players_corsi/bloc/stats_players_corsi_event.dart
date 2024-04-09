part of 'stats_players_corsi_bloc.dart';

abstract class StatsPlayersCorsiEvent extends Equatable {
  const StatsPlayersCorsiEvent();
}

class StatsPlayersCorsiGet extends StatsPlayersCorsiEvent {
  final List<String> statisticsIds;

  const StatsPlayersCorsiGet(this.statisticsIds);

  final tab = PlayersStats.corsi;

  @override
  List<Object> get props => [statisticsIds, tab];
}
