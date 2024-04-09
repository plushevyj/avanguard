part of 'faceoffs_playground_bloc.dart';

sealed class FaceoffsPlaygroundState extends Equatable {
  const FaceoffsPlaygroundState();
}

class FaceoffsPlaygroundInitial extends FaceoffsPlaygroundState {
  @override
  List<Object> get props => [];
}

class FaceoffsPlaygroundGot extends FaceoffsPlaygroundState {
  final FaceoffsPlayground data;

  const FaceoffsPlaygroundGot(this.data);

  @override
  List<Object> get props => [data];
}

class FaceoffsPlaygroundError extends FaceoffsPlaygroundState {
  final String error;

  const FaceoffsPlaygroundError(this.error);

  @override
  List<Object> get props => [error];
}
