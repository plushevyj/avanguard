part of 'faceoffs_bloc.dart';

abstract class FaceoffEvent extends Equatable {
  const FaceoffEvent();
}

class FaceoffGet extends FaceoffEvent {
  final List<String> statisticsIds;
  final bool isMultipleMatches;

  const FaceoffGet(this.statisticsIds, this.isMultipleMatches);

  @override
  List<Object> get props => [statisticsIds, isMultipleMatches];
}
