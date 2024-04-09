import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/match_shifts.dart';
import '../repository/shifts_repository.dart';

part 'stats_shifts_event.dart';

part 'stats_shifts_state.dart';

class StatsShiftsBloc extends Bloc<StatsShiftsEvent, StatsShiftsState> {
  final ShiftsRepository repository;

  StatsShiftsBloc([
    this.repository = const ShiftsRepository(),
  ]) : super(const StatsShiftsInitial()) {
    on<StatsShiftsGet>(_getShifts);
  }

  Future<void> _getShifts(
    StatsShiftsGet event,
    Emitter<StatsShiftsState> emit,
  ) async {
    // try {
      emit(const StatsShiftsInitial());
      emit(StatsShiftsGot(
        await repository.getShifts(
          statisticId: event.statisticId,
          period: event.period,
        ),
      ));
    // } catch (error) {
    //   emit(StatsShiftsError(error.toString()));
    // }
  }
}
