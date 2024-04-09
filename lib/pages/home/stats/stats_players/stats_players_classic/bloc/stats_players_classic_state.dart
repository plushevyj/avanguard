part of 'stats_players_classic_bloc.dart';

abstract class StatsPlayersClassicState extends Equatable {
  const StatsPlayersClassicState();
}

class StatsPlayersClassicInitial extends StatsPlayersClassicState {
  @override
  List<Object> get props => [];
}

class StatsPlayersClassicGot extends StatsPlayersClassicState {
  final List<ClassicRow> rows;

  const StatsPlayersClassicGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersClassicError extends StatsPlayersClassicState {
  final String error;

  const StatsPlayersClassicError(this.error);

  @override
  List<Object> get props => [error];
}
