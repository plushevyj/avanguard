import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/players_stats.dart';
import '../../repository/stats_players_repository.dart';
import '../model/corsi_row.dart';

part 'stats_players_corsi_event.dart';

part 'stats_players_corsi_state.dart';

class StatsPlayersCorsiBloc
    extends Bloc<StatsPlayersCorsiEvent, StatsPlayersCorsiState> {
  final StatsPlayersRepository repository;

  StatsPlayersCorsiBloc([
    this.repository = const StatsPlayersRepository(),
  ]) : super(StatsPlayersCorsiInitial()) {
    on<StatsPlayersCorsiEvent>((event, emit) {});
    on<StatsPlayersCorsiGet>(_getPlayers);
  }

  Future<void> _getPlayers(
    StatsPlayersCorsiGet event,
    Emitter<StatsPlayersCorsiState> emit,
  ) async {
    try {
      emit(StatsPlayersCorsiInitial());
      emit(StatsPlayersCorsiGot(
        await repository.getTable<CorsiRow>(
          statisticsIds: event.statisticsIds,
          tab: event.tab,
        ),
      ));
    } catch (error) {
      emit(StatsPlayersCorsiError(error.toString()));
    }
  }
}
