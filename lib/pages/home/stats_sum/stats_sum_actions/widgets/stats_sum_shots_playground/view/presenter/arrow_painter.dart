import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../../../../customization/std_colors.dart';

class ArrowPainter extends CustomPainter {
  final double x, y, ox, oy;

  const ArrowPainter({
    required this.x,
    required this.y,
    required this.ox,
    required this.oy,
  })  : _dx = ox - x,
        _dy = oy - y;

  final double _dx;
  final double _dy;

  static const _arrowHeadSize = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = StdColors.primary
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // draw the arrow body
    canvas.drawLine(const Offset(0, 0), Offset(_dx, _dy), paint);

    // draw the arrow head
    final angle = math.atan2(_dy, _dx);
    canvas.drawPath(
      Path()
        ..moveTo(_dx, _dy)
        ..lineTo(
          _dx - _arrowHeadSize * math.cos(angle - math.pi / 4),
          _dy - _arrowHeadSize * math.sin(angle - math.pi / 4),
        )
        ..moveTo(_dx, _dy)
        ..lineTo(
          _dx - _arrowHeadSize * math.cos(angle + math.pi / 4),
          _dy - _arrowHeadSize * math.sin(angle + math.pi / 4),
        ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool? hitTest(Offset position) {
    print(
      '${("-" * 90)}\n'
          '$position\n'
          '${("-" * 99)}\n',
    );
    return true;
  }
}
