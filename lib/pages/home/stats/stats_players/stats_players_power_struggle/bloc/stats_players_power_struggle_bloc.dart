import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/power_struggle_row.dart';

part 'stats_players_power_struggle_event.dart';

part 'stats_players_power_struggle_state.dart';

class StatsPlayersPowerStruggleBloc extends Bloc<StatsPlayersPowerStruggleEvent,
    StatsPlayersPowerStruggleState> {
  final StatsPlayersRepository repository;

  StatsPlayersPowerStruggleBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersPowerStruggleInitial()) {
    on<StatsPlayersPowerStruggleEvent>((event, emit) {});
    on<StatsPlayersPowerStruggleGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersPowerStruggleGet event,
    Emitter<StatsPlayersPowerStruggleState> emit,
  ) async {
    try {
      emit(StatsPlayersPowerStruggleInitial());
      emit(StatsPlayersPowerStruggleGot(
        await repository.getTable<PowerStruggleRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersPowerStruggleError(error.toString()));
    }
  }
}
