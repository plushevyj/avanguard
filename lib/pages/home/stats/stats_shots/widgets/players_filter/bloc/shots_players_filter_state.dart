part of 'shots_players_filter_bloc.dart';

abstract class ShotsPlayersFilterState extends Equatable {
  const ShotsPlayersFilterState();
}

class ShotsPlayersFilterInitial extends ShotsPlayersFilterState {
  @override
  List<Object> get props => [];
}

class ShotsPlayersFilterGot extends ShotsPlayersFilterState {
  final PlayersFilter filter;

  const ShotsPlayersFilterGot(this.filter);

  @override
  List<Object> get props => [filter];
}

class ShotsPlayersFilterError extends ShotsPlayersFilterState {
  final String error;

  const ShotsPlayersFilterError(this.error);

  @override
  List<Object> get props => [error];
}
