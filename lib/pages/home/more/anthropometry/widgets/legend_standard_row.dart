import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class LegendStandardRow extends StatelessWidget {
  const LegendStandardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 46, height: 12, color: StdColors.border24),
        const SizedBox(width: Indents.x / 2),
        Text('Норма'.toUpperCase(), style: StdStyles.interBody),
      ],
    );
  }
}
