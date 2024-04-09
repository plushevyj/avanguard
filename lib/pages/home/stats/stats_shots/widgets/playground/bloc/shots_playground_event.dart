part of 'shots_playground_bloc.dart';

abstract class ShotsPlaygroundEvent extends Equatable {
  const ShotsPlaygroundEvent();
}

class ShotsPlaygroundGet extends ShotsPlaygroundEvent {
  final List<String> statisticIds;
  final List<String> playerIds;

  const ShotsPlaygroundGet({
    required this.statisticIds,
    required this.playerIds,
  });

  @override
  List<Object> get props => [statisticIds, playerIds];
}
