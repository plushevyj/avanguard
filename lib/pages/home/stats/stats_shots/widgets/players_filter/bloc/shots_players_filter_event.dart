part of 'shots_players_filter_bloc.dart';

abstract class ShotsPlayersFilterEvent extends Equatable {
  const ShotsPlayersFilterEvent();
}

class ShotsPlayersFilterGet extends ShotsPlayersFilterEvent {
  final String statisticId;

  const ShotsPlayersFilterGet(this.statisticId);

  @override
  List<Object> get props => [statisticId];
}
