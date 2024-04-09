part of 'stats_shifts_bloc.dart';

abstract class StatsShiftsEvent extends Equatable {
  const StatsShiftsEvent();
}

class StatsShiftsGet extends StatsShiftsEvent {
  final String statisticId;
  final String? period;

  const StatsShiftsGet({required this.statisticId, this.period});

  @override
  List<Object?> get props => [statisticId, period];
}
