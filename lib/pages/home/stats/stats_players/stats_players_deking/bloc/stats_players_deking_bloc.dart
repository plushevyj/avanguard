import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/deking_row.dart';

part 'stats_players_deking_event.dart';

part 'stats_players_deking_state.dart';

class StatsPlayersDekingBloc
    extends Bloc<StatsPlayersDekingEvent, StatsPlayersDekingState> {
  final StatsPlayersRepository repository;

  StatsPlayersDekingBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersDekingInitial()) {
    on<StatsPlayersDekingGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersDekingGet event,
    Emitter<StatsPlayersDekingState> emit,
  ) async {
    try {
      emit(StatsPlayersDekingInitial());
      emit(StatsPlayersDekingGot(
        await repository.getTable<DekingRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersDekingError(error.toString()));
    }
  }
}
