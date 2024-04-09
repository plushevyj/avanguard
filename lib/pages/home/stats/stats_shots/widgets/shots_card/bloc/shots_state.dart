part of 'shots_bloc.dart';

abstract class ShotsState extends Equatable {
  const ShotsState();

  @override
  List<Object> get props => [];
}

class ShotsInitial extends ShotsState {
  const ShotsInitial();
}

class ShotsGot extends ShotsState {
  final Shots shots;

  const ShotsGot(this.shots);

  @override
  List<Object> get props => [shots];
}

class ShotsEmpty extends ShotsState {
  const ShotsEmpty();
}

class ShotsError extends ShotsState {
  final String error;

  const ShotsError(this.error);

  @override
  List<Object> get props => [error];
}
