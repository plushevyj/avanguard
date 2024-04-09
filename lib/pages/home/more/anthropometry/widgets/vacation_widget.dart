import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class VacationWidget extends StatelessWidget {
  const VacationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // todo add logic
        Checkbox(value: false, onChanged: (_) {}),
        const Text('Показать отпуск', style: StdStyles.interBody2),
      ],
    );
  }
}
