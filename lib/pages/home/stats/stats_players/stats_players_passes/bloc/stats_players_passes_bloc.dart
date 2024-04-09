import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/passes_row.dart';

part 'stats_players_passes_event.dart';

part 'stats_players_passes_state.dart';

class StatsPlayersPassesBloc
    extends Bloc<StatsPlayersPassesEvent, StatsPlayersPassesState> {
  final StatsPlayersRepository repository;

  StatsPlayersPassesBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersPassesInitial()) {
    on<StatsPlayersPassesEvent>((event, emit) {});
    on<StatsPlayersPassesGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersPassesGet event,
    Emitter<StatsPlayersPassesState> emit,
  ) async {
    try {
      emit(StatsPlayersPassesInitial());
      emit(StatsPlayersPassesGot(
        await repository.getTable<PassesRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersPassesError(error.toString()));
    }
  }
}
