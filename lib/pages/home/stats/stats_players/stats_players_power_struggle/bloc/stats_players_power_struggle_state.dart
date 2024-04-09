part of 'stats_players_power_struggle_bloc.dart';

abstract class StatsPlayersPowerStruggleState extends Equatable {
  const StatsPlayersPowerStruggleState();
}

class StatsPlayersPowerStruggleInitial extends StatsPlayersPowerStruggleState {
  @override
  List<Object> get props => [];
}

class StatsPlayersPowerStruggleGot extends StatsPlayersPowerStruggleState {
  final List<PowerStruggleRow> rows;

  const StatsPlayersPowerStruggleGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersPowerStruggleError extends StatsPlayersPowerStruggleState {
  final String error;

  const StatsPlayersPowerStruggleError(this.error);

  @override
  List<Object> get props => [error];
}
