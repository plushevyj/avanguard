import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/foul_row.dart';

part 'stats_players_foul_event.dart';

part 'stats_players_foul_state.dart';

class StatsPlayersFoulBloc
    extends Bloc<StatsPlayersFoulEvent, StatsPlayersFoulState> {
  final StatsPlayersRepository repository;

  StatsPlayersFoulBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersFoulInitial()) {
    on<StatsPlayersFoulEvent>((event, emit) {});
    on<StatsPlayersFoulGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersFoulGet event,
    Emitter<StatsPlayersFoulState> emit,
  ) async {
    try {
      emit(StatsPlayersFoulInitial());
      emit(StatsPlayersFoulGot(
        await repository.getTable<FoulRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersFoulError(error.toString()));
    }
  }
}
