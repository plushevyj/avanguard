class GameAction {
  final double x, y, ox, oy;
  final bool isOur, weAtHome;
  final String name, shortName;
  final String playerName;
  final String time;

  GameAction({
    required this.x,
    required this.y,
    required this.ox,
    required this.oy,
    required this.isOur,
    required this.weAtHome,
    required this.name,
    required this.shortName,
    required this.playerName,
    required this.time,
  });
}
