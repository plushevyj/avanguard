import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/classic_row.dart';
import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';

part 'stats_players_classic_event.dart';

part 'stats_players_classic_state.dart';

class StatsPlayersClassicBloc
    extends Bloc<StatsPlayersClassicEvent, StatsPlayersClassicState> {
  final StatsPlayersRepository repository;

  StatsPlayersClassicBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersClassicInitial()) {
    on<StatsPlayersClassicEvent>((event, emit) {});
    on<StatsPlayersClassicGet>(_getPlayersTable);
  }

  Future<void> _getPlayersTable(
    StatsPlayersClassicGet event,
    Emitter<StatsPlayersClassicState> emit,
  ) async {
    try {
      emit(StatsPlayersClassicInitial());
      emit(StatsPlayersClassicGot(
        await repository.getTable<ClassicRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersClassicError(error.toString()));
    }
  }
}
