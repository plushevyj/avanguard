import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../model/string_and_percent_value.dart';

class GateZonesStat extends StatelessWidget {
  final StringAndPercentValue? value;

  const GateZonesStat(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${value?.percentValue ?? '-'}%',
          style: Get.textTheme.displaySmall,
        ),
        Text(value?.value ?? '-', style: const TextStyle(color: Grey.g54)),
      ],
    );
  }
}
