import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class LegendSeasonRow extends StatelessWidget {
  final int season;
  final Color color;

  const LegendSeasonRow(this.season, {required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 15, height: 3, color: color),
        const SizedBox(width: Indents.x / 2),
        Text(
          'сезон $season/${season + 1}'.toUpperCase(),
          style: StdStyles.interBody,
        ),
      ],
    );
  }
}
