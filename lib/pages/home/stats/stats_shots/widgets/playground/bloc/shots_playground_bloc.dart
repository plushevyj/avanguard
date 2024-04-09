import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/playground.dart';
import '../repository/playground_repository.dart';

part 'shots_playground_event.dart';

part 'shots_playground_state.dart';

class ShotsPlaygroundBloc
    extends Bloc<ShotsPlaygroundEvent, ShotsPlaygroundState> {
  final PlaygroundRepository repository;

  ShotsPlaygroundBloc([
    this.repository = const PlaygroundRepository(),
  ]) : super(ShotsPlaygroundInitial()) {
    on<ShotsPlaygroundEvent>((event, emit) {});
    on<ShotsPlaygroundGet>(_getPlayground);
  }

  Future<void> _getPlayground(
    ShotsPlaygroundGet event,
    Emitter<ShotsPlaygroundState> emit,
  ) async {
    try {
      emit(ShotsPlaygroundInitial());
      emit(ShotsPlaygroundGot(
        await repository.getPlayground(
          statisticId: event.statisticIds,
          playerIds: event.playerIds,
        ),
      ));
    } on Exception catch (error) {
      emit(ShotsPlaygroundError(error.toString()));
    }
  }
}
