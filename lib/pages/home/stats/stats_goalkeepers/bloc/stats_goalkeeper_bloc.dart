import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/goalkeeper_stats.dart';
import '../repository/stats_goalkeeper_repository.dart';

part 'stats_goalkeeper_event.dart';

part 'stats_goalkeeper_state.dart';

class StatsGoalkeeperBloc
    extends Bloc<StatsGoalkeeperEvent, StatsGoalkeeperState> {
  final StatsGoalkeeperRepository repository;

  StatsGoalkeeperBloc([
    this.repository = const StatsGoalkeeperRepository(),
  ]) : super(StatsGoalkeeperInitial()) {
    on<StatsGoalkeeperGet>(_getGoalkeeperStats);
  }

  Future<void> _getGoalkeeperStats(
    StatsGoalkeeperGet event,
    Emitter<StatsGoalkeeperState> emit,
  ) async {
    try {
      emit(StatsGoalkeeperInitial());
      emit(StatsGoalkeeperGot(
        await repository.getStats(event.statisticsIds),
      ));
    } catch (error) {
      emit(StatsGoalkeeperError(error.toString()));
    }
  }
}
