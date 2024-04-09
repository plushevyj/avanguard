part of 'stats_goalkeeper_bloc.dart';

abstract class StatsGoalkeeperState extends Equatable {
  const StatsGoalkeeperState();
}

class StatsGoalkeeperInitial extends StatsGoalkeeperState {
  @override
  List<Object> get props => [];
}

class StatsGoalkeeperGot extends StatsGoalkeeperState {
  final GoalkeeperStats stats;

  const StatsGoalkeeperGot(this.stats);

  @override
  List<Object> get props => [stats];
}

class StatsGoalkeeperError extends StatsGoalkeeperState {
  final String error;

  const StatsGoalkeeperError(this.error);

  @override
  List<Object> get props => [error];
}
