part of 'stats_goalkeeper_bloc.dart';

abstract class StatsGoalkeeperEvent extends Equatable {
  const StatsGoalkeeperEvent();
}

class StatsGoalkeeperGet extends StatsGoalkeeperEvent {
  final List<String> statisticsIds;

  const StatsGoalkeeperGet(this.statisticsIds);

  @override
  List<Object> get props => [statisticsIds];
}
