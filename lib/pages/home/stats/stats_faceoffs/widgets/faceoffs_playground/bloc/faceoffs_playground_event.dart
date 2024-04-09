part of 'faceoffs_playground_bloc.dart';

abstract class FaceoffsPlaygroundEvent extends Equatable {
  const FaceoffsPlaygroundEvent();
}

class FaceoffsPlaygroundGet extends FaceoffsPlaygroundEvent {
  final List<String> statisticsIds;
  final List<String> playerIds;
  final bool isMultipleMatches;

  const FaceoffsPlaygroundGet({
    required this.statisticsIds,
    required this.playerIds,
    required this.isMultipleMatches,
  });

  @override
  List<Object> get props => [statisticsIds, playerIds];
}
