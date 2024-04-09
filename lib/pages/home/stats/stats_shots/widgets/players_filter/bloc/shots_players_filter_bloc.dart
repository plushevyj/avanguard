import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/players_filter.dart';
import '../repository/shots_players_filter_repository.dart';

part 'shots_players_filter_event.dart';

part 'shots_players_filter_state.dart';

class ShotsPlayersFilterBloc extends Bloc<ShotsPlayersFilterEvent, ShotsPlayersFilterState> {
  final ShotsPlayersFilterRepository repository;

  ShotsPlayersFilterBloc([
    this.repository = const ShotsPlayersFilterRepository(),
  ]) : super(ShotsPlayersFilterInitial()) {
    on<ShotsPlayersFilterEvent>((event, emit) {});
    on<ShotsPlayersFilterGet>(_getPlayersFilter);
  }

  Future<void> _getPlayersFilter(
    ShotsPlayersFilterGet event,
    Emitter<ShotsPlayersFilterState> emit,
  ) async {
    try {
      emit(ShotsPlayersFilterInitial());
      emit(ShotsPlayersFilterGot(
        await repository.getPlayersFilter(event.statisticId),
      ));
    } on Exception catch (error) {
      emit(ShotsPlayersFilterError(error.toString()));
    }
  }
}
