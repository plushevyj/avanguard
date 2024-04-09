part of 'stats_overview_bloc.dart';

abstract class StatsOverviewEvent extends Equatable {
  const StatsOverviewEvent();
}

class StatsOverviewGet extends StatsOverviewEvent {
  final String statisticId;
  final String? period;

  const StatsOverviewGet({required this.statisticId, this.period});

  @override
  List<Object?> get props => [statisticId, period];
}
