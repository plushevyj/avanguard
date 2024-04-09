part of 'shots_playground_bloc.dart';

abstract class ShotsPlaygroundState extends Equatable {
  const ShotsPlaygroundState();
}

class ShotsPlaygroundInitial extends ShotsPlaygroundState {
  @override
  List<Object> get props => [];
}

class ShotsPlaygroundGot extends ShotsPlaygroundState {
  final Playground playground;

  const ShotsPlaygroundGot(this.playground);

  @override
  List<Object> get props => [playground];
}

class ShotsPlaygroundError extends ShotsPlaygroundState {
  final String error;

  const ShotsPlaygroundError(this.error);

  @override
  List<Object> get props => [error];
}
