import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/shots.dart';
import '../repository/shots_repository.dart';

part 'shots_event.dart';

part 'shots_state.dart';

class ShotsBloc extends Bloc<ShotsEvent, ShotsState> {
  final ShotsRepository repository;

  ShotsBloc([
    this.repository = const ShotsRepository(),
  ]) : super(const ShotsInitial()) {
    on<ShotsGet>(_getPlayersFilter);
  }

  Future<void> _getPlayersFilter(
    ShotsGet event,
    Emitter<ShotsState> emit,
  ) async {
    try {
      emit(const ShotsInitial());
      final shots = await repository.getShots(event.statisticsIds);
      emit(shots == null ? const ShotsEmpty() : ShotsGot(shots));
    } on Exception catch (error) {
      emit(ShotsError(error.toString()));
    }
  }
}
