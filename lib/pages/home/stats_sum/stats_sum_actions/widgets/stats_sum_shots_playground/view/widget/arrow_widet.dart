import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../../../../customization/std_colors.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({
    required double x,
    required double y,
    required double ox,
    required double oy,
    Key? key,
  })  : _dx = ox - x,
        _dy = oy - y,
        super(key: key);

  final double _dx;
  final double _dy;

  static double _calculateDistance(x1, y1, x2, y2) {
    return math.sqrt(math.pow(x2 - x1, 2) + math.pow(y2 - y1, 2));
  }

  static const _height = 2.0;
  static const _width = 10.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: _calculateDistance(0, 0, _dx, _dy),
          height: _height,
          color: StdColors.primary,
        ),
        Transform.translate(
          offset: const Offset(-_width, _height * 2),
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              width: _width,
              height: _height,
              color: StdColors.primary,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-_width * 2, -_height * 2),
          child: Transform.rotate(
            angle: math.pi / 4,
            child: Container(
              width: _width,
              height: _height,
              color: StdColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}