import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/puck_battle_row.dart';

part 'stats_players_puck_battle_event.dart';

part 'stats_players_puck_battle_state.dart';

class StatsPlayersPuckBattleBloc
    extends Bloc<StatsPlayersPuckBattleEvent, StatsPlayersPuckBattleState> {
  final StatsPlayersRepository repository;

  StatsPlayersPuckBattleBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersPuckBattleInitial()) {
    on<StatsPlayersPuckBattleEvent>((event, emit) {});
    on<StatsPlayersPuckBattleGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersPuckBattleGet event,
    Emitter<StatsPlayersPuckBattleState> emit,
  ) async {
    try {
      emit(StatsPlayersPuckBattleInitial());
      emit(StatsPlayersPuckBattleGot(
        await repository.getTable<PuckBattleRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersPuckBattleError(error.toString()));
    }
  }
}
