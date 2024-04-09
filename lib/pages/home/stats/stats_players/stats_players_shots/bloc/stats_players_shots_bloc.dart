import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/shots_row.dart';

part 'stats_players_shots_event.dart';

part 'stats_players_shots_state.dart';

class StatsPlayersShotsBloc
    extends Bloc<StatsPlayersShotsEvent, StatsPlayersShotsState> {
  final StatsPlayersRepository repository;

  StatsPlayersShotsBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersShotsInitial()) {
    on<StatsPlayersShotsEvent>((event, emit) {});
    on<StatsPlayersShotsGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersShotsGet event,
    Emitter<StatsPlayersShotsState> emit,
  ) async {
    try {
      emit(StatsPlayersShotsInitial());
      emit(StatsPlayersShotsGot(
        await repository.getTable<ShotsRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersShotsError(error.toString()));
    }
  }
}
