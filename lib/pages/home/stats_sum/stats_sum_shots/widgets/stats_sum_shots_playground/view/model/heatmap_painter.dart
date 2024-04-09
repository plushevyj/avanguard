import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

import '../constant/playground_const.dart';
import 'heat_point.dart';

class HeatmapPainter extends CustomPainter {
  final List<HeatPoint> points;

  HeatmapPainter(this.points) : assert(points.isNotEmpty);

  int get hottestPoint => points.map((p) => p.count).max;

  var _squareSize = .0;

  set __squareSize(double value) => _squareSize = value;

  @override
  void paint(Canvas canvas, Size size) {
    __squareSize = PlaygroundConst.x / PlaygroundConst.maxX;
    for (final point in points) {
      final (double left, double top) = _getCoordinates(point, size);
      Rect rect = Rect.fromLTWH(left, top, _squareSize, _squareSize);

      Paint paint = Paint()..color = _getColor(point.count / hottestPoint);
      canvas.drawRect(rect, paint);
    }
  }

  (double left, double top) _getCoordinates(HeatPoint point, Size size) {
    var (left, top) = (point.x, point.y);
    if (point.isTop) {
      left = PlaygroundConst.maxX - left;
      top = PlaygroundConst.maxY - top;
    }
    return (
        left / PlaygroundConst.maxX * size.width,
        top / PlaygroundConst.maxY * size.height,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  Color _getColor(double value) {
    value = value.clamp(0.0, 1.0);
    int index = (value * (_heatmapColors.length - 1)).round();
    return _heatmapColors[index];
  }

  static const _heatmapColors = [
    // Color.fromRGBO(49, 54, 149, 1),
    // Color.fromRGBO(51, 60, 152, 1),
    // Color.fromRGBO(53, 67, 155, 1),
    // Color.fromRGBO(55, 73, 158, 1),
    // Color.fromRGBO(57, 79, 161, 1),
    // Color.fromRGBO(59, 86, 165, 1),
    // Color.fromRGBO(61, 92, 168, 1),
    // Color.fromRGBO(63, 98, 171, 1),
    // Color.fromRGBO(65, 104, 174, 1),
    // Color.fromRGBO(67, 111, 177, 1),
    // Color.fromRGBO(69, 117, 180, 1),
    // Color.fromRGBO(74, 123, 183, 1),
    // Color.fromRGBO(78, 128, 186, 1),
    // Color.fromRGBO(83, 134, 189, 1),
    // Color.fromRGBO(88, 139, 192, 1),
    // Color.fromRGBO(93, 145, 195, 1),
    // Color.fromRGBO(97, 151, 197, 1),
    // Color.fromRGBO(102, 156, 200, 1),
    // Color.fromRGBO(107, 162, 203, 1),
    // Color.fromRGBO(111, 167, 206, 1),
    // Color.fromRGBO(116, 173, 209, 1),
    // Color.fromRGBO(122, 177, 211, 1),
    // Color.fromRGBO(127, 182, 214, 1),
    // Color.fromRGBO(133, 186, 216, 1),
    // Color.fromRGBO(138, 191, 219, 1),
    // Color.fromRGBO(144, 195, 221, 1),
    // Color.fromRGBO(149, 199, 223, 1),
    // Color.fromRGBO(155, 204, 226, 1),
    // Color.fromRGBO(160, 208, 228, 1),
    // Color.fromRGBO(166, 213, 231, 1),
    // Color.fromRGBO(171, 217, 233, 1),
    // Color.fromRGBO(176, 220, 235, 1),
    // Color.fromRGBO(182, 222, 236, 1),
    // Color.fromRGBO(187, 225, 238, 1),
    // Color.fromRGBO(192, 227, 239, 1),
    // Color.fromRGBO(198, 230, 241, 1),
    // Color.fromRGBO(203, 233, 242, 1),
    // Color.fromRGBO(208, 235, 244, 1),
    // Color.fromRGBO(213, 238, 245, 1),
    // Color.fromRGBO(219, 240, 247, 1),
    // Color.fromRGBO(224, 243, 248, 1),
    // Color.fromRGBO(227, 244, 242, 1),
    // Color.fromRGBO(230, 245, 237, 1),
    // Color.fromRGBO(233, 247, 231, 1),
    // Color.fromRGBO(236, 248, 225, 1),
    // Color.fromRGBO(240, 249, 220, 1),
    // Color.fromRGBO(243, 250, 214, 1),
    // Color.fromRGBO(246, 251, 208, 1),
    // Color.fromRGBO(249, 253, 202, 1),
    // Color.fromRGBO(252, 254, 197, 1),
    // Color.fromRGBO(255, 255, 191, 1),
    // Color.fromRGBO(255, 252, 186, 1),
    // Color.fromRGBO(255, 249, 182, 1),
    Color.fromRGBO(255, 246, 177, 1),
    Color.fromRGBO(255, 243, 172, 1),
    Color.fromRGBO(255, 240, 168, 1),
    Color.fromRGBO(254, 236, 163, 1),
    Color.fromRGBO(254, 233, 158, 1),
    Color.fromRGBO(254, 230, 153, 1),
    Color.fromRGBO(254, 227, 149, 1),
    Color.fromRGBO(254, 224, 144, 1),
    Color.fromRGBO(254, 219, 139, 1),
    Color.fromRGBO(254, 214, 135, 1),
    Color.fromRGBO(254, 209, 130, 1),
    Color.fromRGBO(254, 204, 125, 1),
    Color.fromRGBO(254, 199, 121, 1),
    Color.fromRGBO(253, 194, 116, 1),
    Color.fromRGBO(253, 189, 111, 1),
    Color.fromRGBO(253, 184, 106, 1),
    Color.fromRGBO(253, 179, 102, 1),
    Color.fromRGBO(253, 174, 97, 1),
    Color.fromRGBO(252, 168, 94, 1),
    Color.fromRGBO(251, 161, 91, 1),
    Color.fromRGBO(250, 155, 88, 1),
    Color.fromRGBO(249, 148, 85, 1),
    Color.fromRGBO(249, 142, 82, 1),
    Color.fromRGBO(248, 135, 79, 1),
    Color.fromRGBO(247, 129, 76, 1),
    Color.fromRGBO(246, 122, 73, 1),
    Color.fromRGBO(245, 115, 70, 1),
    Color.fromRGBO(244, 109, 67, 1),
    Color.fromRGBO(241, 103, 64, 1),
    Color.fromRGBO(238, 97, 61, 1),
    Color.fromRGBO(235, 91, 59, 1),
    Color.fromRGBO(232, 85, 56, 1),
    Color.fromRGBO(230, 79, 53, 1),
    Color.fromRGBO(227, 72, 50, 1),
    Color.fromRGBO(224, 66, 47, 1),
    Color.fromRGBO(221, 60, 45, 1),
    Color.fromRGBO(218, 54, 42, 1),
    Color.fromRGBO(215, 48, 39, 1),
    Color.fromRGBO(210, 43, 39, 1),
    Color.fromRGBO(205, 38, 39, 1),
    Color.fromRGBO(200, 34, 39, 1),
    Color.fromRGBO(195, 29, 39, 1),
    Color.fromRGBO(190, 24, 39, 1),
    Color.fromRGBO(185, 19, 38, 1),
    Color.fromRGBO(180, 14, 38, 1),
    Color.fromRGBO(175, 10, 38, 1),
    Color.fromRGBO(170, 5, 38, 1),
    Color.fromRGBO(165, 0, 38, 1),
  ];
}
