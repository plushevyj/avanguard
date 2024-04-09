part of 'stats_players_passes_bloc.dart';

abstract class StatsPlayersPassesState extends Equatable {
  const StatsPlayersPassesState();
}

class StatsPlayersPassesInitial extends StatsPlayersPassesState {
  @override
  List<Object> get props => [];
}

class StatsPlayersPassesGot extends StatsPlayersPassesState {
  final List<PassesRow> rows;

  const StatsPlayersPassesGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersPassesError extends StatsPlayersPassesState {
  final String error;

  const StatsPlayersPassesError(this.error);

  @override
  List<Object> get props => [error];
}
