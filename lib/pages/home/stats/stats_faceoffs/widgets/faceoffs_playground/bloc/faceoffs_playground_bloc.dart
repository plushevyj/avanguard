import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/faceoffs_playground.dart';
import '../repository/faceoffs_playground_repository.dart';

part 'faceoffs_playground_event.dart';

part 'faceoffs_playground_state.dart';

class FaceoffsPlaygroundBloc
    extends Bloc<FaceoffsPlaygroundEvent, FaceoffsPlaygroundState> {
  final FaceoffsPlaygroundRepository repository;

  FaceoffsPlaygroundBloc([
    this.repository = const FaceoffsPlaygroundRepository(),
  ]) : super(FaceoffsPlaygroundInitial()) {
    on<FaceoffsPlaygroundEvent>((event, emit) {});
    on<FaceoffsPlaygroundGet>(_getPlayground);
  }

  Future<void> _getPlayground(
    FaceoffsPlaygroundGet event,
    Emitter<FaceoffsPlaygroundState> emit,
  ) async {
    try {
      emit(FaceoffsPlaygroundInitial());
      emit(FaceoffsPlaygroundGot(
        await repository.getPlayground(
          statisticsIds: event.statisticsIds,
          playerIds: event.playerIds,
          isMultipleMatches: event.isMultipleMatches,
        ),
      ));
    } on Exception catch (error) {
      emit(FaceoffsPlaygroundError(error.toString()));
    }
  }
}
