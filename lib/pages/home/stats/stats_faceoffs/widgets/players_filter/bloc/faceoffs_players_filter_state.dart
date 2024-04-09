part of 'faceoffs_players_filter_bloc.dart';

abstract class FaceoffsPlayersFilterState extends Equatable {
  const FaceoffsPlayersFilterState();
}

class FaceoffsPlayersFilterInitial extends FaceoffsPlayersFilterState {
  @override
  List<Object> get props => [];
}

class FaceoffsPlayersFilterGot extends FaceoffsPlayersFilterState {
  final FaceoffsPlayers filter;

  const FaceoffsPlayersFilterGot(this.filter);

  @override
  List<Object> get props => [filter];
}

class FaceoffsPlayersFilterError extends FaceoffsPlayersFilterState {
  final String error;

  const FaceoffsPlayersFilterError(this.error);

  @override
  List<Object> get props => [error];
}
