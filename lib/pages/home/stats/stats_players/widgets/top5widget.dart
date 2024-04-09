import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class Top5Widget extends StatelessWidget {
  final bool? isTop;

  const Top5Widget({this.isTop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isTop == null
        ? const SizedBox(width: 12)
        : Container(
            margin: const EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              color: isTop! ? Grey.g68 : StdColors.yellow,
              shape: BoxShape.circle,
            ),
            width: 6,
            height: 6,
          );
  }
}
