part of 'stats_players_shots_bloc.dart';

abstract class StatsPlayersShotsState extends Equatable {
  const StatsPlayersShotsState();
}

class StatsPlayersShotsInitial extends StatsPlayersShotsState {
  @override
  List<Object> get props => [];
}

class StatsPlayersShotsGot extends StatsPlayersShotsState {
  final List<ShotsRow> rows;

  const StatsPlayersShotsGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersShotsError extends StatsPlayersShotsState {
  final String error;

  const StatsPlayersShotsError(this.error);

  @override
  List<Object> get props => [error];
}
