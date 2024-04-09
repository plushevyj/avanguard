part of 'stats_overview_bloc.dart';

abstract class StatsOverviewState extends Equatable {
  const StatsOverviewState();
}

class StatsOverviewInitial extends StatsOverviewState {
  const StatsOverviewInitial();

  @override
  List<Object> get props => [];
}

class StatsOverviewGot extends StatsOverviewState {
  final StatisticsGetMatchIndexPageInfoResponseDto stats;

  const StatsOverviewGot(this.stats);

  @override
  List<Object> get props => [stats];
}

class StatsOverviewError extends StatsOverviewState {
  final String error;

  const StatsOverviewError(this.error);

  @override
  List<Object> get props => [error];
}
