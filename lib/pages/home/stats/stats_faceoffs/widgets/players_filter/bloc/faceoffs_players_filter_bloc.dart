import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/faceoffs_players.dart';
import '../repository/players_filter_repository.dart';

part 'faceoffs_players_filter_event.dart';

part 'faceoffs_players_filter_state.dart';

class FaceoffsPlayersFilterBloc extends Bloc<FaceoffsPlayersFilterEvent, FaceoffsPlayersFilterState> {
  final PlayersFilterRepository repository;

  FaceoffsPlayersFilterBloc([
    this.repository = const PlayersFilterRepository(),
  ]) : super(FaceoffsPlayersFilterInitial()) {
    on<FaceoffsPlayersFilterEvent>((event, emit) {});
    on<FaceoffsPlayersFilterGet>(_getPlayersFilter);
  }

  Future<void> _getPlayersFilter(
    FaceoffsPlayersFilterGet event,
    Emitter<FaceoffsPlayersFilterState> emit,
  ) async {
    try {
      emit(FaceoffsPlayersFilterInitial());
      emit(FaceoffsPlayersFilterGot(
        await repository.getPlayersFilter(event.statisticsIds),
      ));
    } on Exception catch (error) {
      emit(FaceoffsPlayersFilterError(error.toString()));
    }
  }
}
