import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class IndicatorDiagram extends StatelessWidget {
  final double _diameter;
  final String result;

  const IndicatorDiagram(
    this.result, {
    double? diameter,
    Key? key,
  })  : _diameter = diameter ?? 10,
        super(key: key);

  List<Color> getColors(String result) {
    return [
      for (var i = 0; i < result.length; ++i)
        switch (result[i]) {
          'G' => StdColors.green,
          'R' => StdColors.red,
          'Y' => const Color(0xFFFFC633),
          'N' || 'P' => Grey.g26,
          _ => Colors.white,
        },
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (getColors(result) case [Color left, Color right]) {
      return Stack(
        children: [
          CustomPaint(
            painter: MyPainter(left),
            size: Size(_diameter, _diameter),
          ),
          CustomPaint(
            painter: MyPainter(right, false),
            size: Size(_diameter, _diameter),
          ),
        ],
      );
    }
    return const SizedBox();
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  final bool isFirst;
  final Color color;

  const MyPainter(this.color, [this.isFirst = true]);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      isFirst ? pi / 2 : pi * 1.5,
      pi,
      false,
      paint,
    );
  }
}
