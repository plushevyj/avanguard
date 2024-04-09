part of 'stats_players_time_bloc.dart';

abstract class StatsPlayersTimeState extends Equatable {
  const StatsPlayersTimeState();
}

class StatsPlayersTimeInitial extends StatsPlayersTimeState {
  @override
  List<Object> get props => [];
}

class StatsPlayersTimeGot extends StatsPlayersTimeState {
  final List<TimeRow> rows;

  const StatsPlayersTimeGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersTimeError extends StatsPlayersTimeState {
  final String error;

  const StatsPlayersTimeError(this.error);

  @override
  List<Object> get props => [error];
}
