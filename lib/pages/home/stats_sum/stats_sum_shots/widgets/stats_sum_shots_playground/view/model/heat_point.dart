class HeatPoint {
  final int x, y;
  final bool isOur, weAtHome;
  int count;

  HeatPoint({
    required this.x,
    required this.y,
    required this.isOur,
    required this.weAtHome,
    this.count = 0,
  }) : isTop = weAtHome == isOur;

  final bool isTop;

  void increment() => count++;

  @override
  String toString() => 'HeatPoint(x: $x,\ty: $y,\tcount: $count,\ttop: $isTop)';
}
