part of 'shots_bloc.dart';

abstract class ShotsEvent extends Equatable {
  const ShotsEvent();
}

class ShotsGet extends ShotsEvent {
  final List<String> statisticsIds;

  const ShotsGet(this.statisticsIds);

  @override
  List<Object> get props => [statisticsIds];
}
