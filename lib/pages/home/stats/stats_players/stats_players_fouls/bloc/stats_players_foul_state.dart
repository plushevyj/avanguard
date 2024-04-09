part of 'stats_players_foul_bloc.dart';

abstract class StatsPlayersFoulState extends Equatable {
  const StatsPlayersFoulState();
}

class StatsPlayersFoulInitial extends StatsPlayersFoulState {
  @override
  List<Object> get props => [];
}

class StatsPlayersFoulGot extends StatsPlayersFoulState {
  final List<FoulRow> rows;

  const StatsPlayersFoulGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersFoulError extends StatsPlayersFoulState {
  final String error;

  const StatsPlayersFoulError(this.error);

  @override
  List<Object> get props => [error];
}
