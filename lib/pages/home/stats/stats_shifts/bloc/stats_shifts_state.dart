part of 'stats_shifts_bloc.dart';

abstract class StatsShiftsState extends Equatable {
  const StatsShiftsState();
}

class StatsShiftsInitial extends StatsShiftsState {
  const StatsShiftsInitial();

  @override
  List<Object> get props => [];
}

class StatsShiftsGot extends StatsShiftsState {
  final MatchShifts matchShifts;

  const StatsShiftsGot(this.matchShifts);

  @override
  List<Object> get props => [matchShifts];
}

class StatsShiftsError extends StatsShiftsState {
  final String error;

  const StatsShiftsError(this.error);

  @override
  List<Object> get props => [error];
}
