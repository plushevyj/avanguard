part of 'faceoffs_players_filter_bloc.dart';

abstract class FaceoffsPlayersFilterEvent extends Equatable {
  const FaceoffsPlayersFilterEvent();
}

class FaceoffsPlayersFilterGet extends FaceoffsPlayersFilterEvent {
  final List<String> statisticsIds;

  const FaceoffsPlayersFilterGet(this.statisticsIds);

  @override
  List<Object> get props => [statisticsIds];
}
