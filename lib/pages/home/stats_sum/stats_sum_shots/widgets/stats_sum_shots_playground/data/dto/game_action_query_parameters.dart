class GameActionQueryParameters {
  final List<String>? statisticIds;
  final List<String>? actionIds;
  final List<int>? playerIds;
  final String? type;

  GameActionQueryParameters({
    this.statisticIds,
    this.actionIds,
    this.playerIds,
    this.type,
  });

  GameActionQueryParameters copyWith({
    List<String>? statisticIds,
    List<String>? actionIds,
    List<int>? playerIds,
    String? type,
  }) =>
      GameActionQueryParameters(
        statisticIds: statisticIds ?? this.statisticIds,
        actionIds: actionIds ?? this.actionIds,
        playerIds: playerIds ?? this.playerIds,
        type: type ?? this.type,
      );
}
