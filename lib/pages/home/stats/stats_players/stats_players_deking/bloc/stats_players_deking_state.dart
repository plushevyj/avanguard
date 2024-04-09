part of 'stats_players_deking_bloc.dart';

abstract class StatsPlayersDekingState extends Equatable {
  const StatsPlayersDekingState();
}

class StatsPlayersDekingInitial extends StatsPlayersDekingState {
  @override
  List<Object> get props => [];
}

class StatsPlayersDekingGot extends StatsPlayersDekingState {
  final List<DekingRow> rows;

  const StatsPlayersDekingGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersDekingError extends StatsPlayersDekingState {
  final String error;

  const StatsPlayersDekingError(this.error);

  @override
  List<Object> get props => [error];
}
