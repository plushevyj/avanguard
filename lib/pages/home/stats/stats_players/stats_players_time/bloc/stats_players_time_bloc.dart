import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/time_row.dart';

part 'stats_players_time_event.dart';

part 'stats_players_time_state.dart';

class StatsPlayersTimeBloc
    extends Bloc<StatsPlayersTimeEvent, StatsPlayersTimeState> {
  final StatsPlayersRepository repository;

  StatsPlayersTimeBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersTimeInitial()) {
    on<StatsPlayersTimeEvent>((event, emit) {});
    on<StatsPlayersTimeGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersTimeGet event,
    Emitter<StatsPlayersTimeState> emit,
  ) async {
    try {
      emit(StatsPlayersTimeInitial());
      emit(StatsPlayersTimeGot(
        await repository.getTable<TimeRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersTimeError(error.toString()));
    }
  }
}
