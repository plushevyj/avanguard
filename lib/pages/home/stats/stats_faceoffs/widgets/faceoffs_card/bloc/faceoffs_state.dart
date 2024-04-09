part of 'faceoffs_bloc.dart';

abstract class FaceoffsState extends Equatable {
  const FaceoffsState();
}

class FaceoffInitial extends FaceoffsState {
  @override
  List<Object> get props => [];
}

class FaceoffsGot extends FaceoffsState {
  final Faceoff faceoff;

  const FaceoffsGot(this.faceoff);

  @override
  List<Object> get props => [faceoff];
}

class FaceoffsError extends FaceoffsState {
  final String error;

  const FaceoffsError(this.error);

  @override
  List<Object> get props => [error];
}
