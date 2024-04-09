part of 'stats_players_corsi_bloc.dart';

abstract class StatsPlayersCorsiState extends Equatable {
  const StatsPlayersCorsiState();
}

class StatsPlayersCorsiInitial extends StatsPlayersCorsiState {
  @override
  List<Object> get props => [];
}

class StatsPlayersCorsiGot extends StatsPlayersCorsiState {
  final List<CorsiRow> rows;

  const StatsPlayersCorsiGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersCorsiError extends StatsPlayersCorsiState {
  final String error;

  const StatsPlayersCorsiError(this.error);

  @override
  List<Object> get props => [error];
}
