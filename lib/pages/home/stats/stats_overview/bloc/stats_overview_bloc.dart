import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/stats_overview.dart';
import '../repository/stats_overview_repository.dart';

part 'stats_overview_event.dart';

part 'stats_overview_state.dart';

class StatsOverviewBloc extends Bloc<StatsOverviewEvent, StatsOverviewState> {
  final StatsOverviewRepository repository;

  StatsOverviewBloc([
    this.repository = const StatsOverviewRepository(),
  ]) : super(const StatsOverviewInitial()) {
    on<StatsOverviewGet>(_getStats);
  }

  Future<void> _getStats(
    StatsOverviewGet event,
    Emitter<StatsOverviewState> emit,
  ) async {
    try {
      emit(const StatsOverviewInitial());
      emit(StatsOverviewGot(
        await repository.getStats(
          statisticId: event.statisticId,
          period: event.period,
        ),
      ));
    } on Exception catch (error) {
      emit(StatsOverviewError(error.toString()));
    }
  }
}
