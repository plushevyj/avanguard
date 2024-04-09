import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/faceoff.dart';
import '../repository/faceoff_repository.dart';

part 'faceoffs_event.dart';

part 'faceoffs_state.dart';

class FaceoffBloc extends Bloc<FaceoffEvent, FaceoffsState> {
  final FaceoffRepository repository;

  FaceoffBloc([
    this.repository = const FaceoffRepository(),
  ]) : super(FaceoffInitial()) {
    on<FaceoffEvent>((event, emit) {});
    on<FaceoffGet>(_getFaceoffs);
  }

  Future<void> _getFaceoffs(
    FaceoffGet event,
    Emitter<FaceoffsState> emit,
  ) async {
    try {
      emit(FaceoffInitial());
      emit(FaceoffsGot(await repository.getFaceoffs(
        statisticsIds: event.statisticsIds,
        isMultipleMatches: event.isMultipleMatches,
      )));
    } on Exception catch (error) {
      emit(FaceoffsError(error.toString()));
    }
  }
}
