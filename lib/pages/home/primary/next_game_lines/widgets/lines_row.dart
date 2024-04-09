import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../widgets/filter_chip_widget.dart';
import '../controller/line_controller.dart';

class LinesRow extends StatelessWidget {
  const LinesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final line = Get.put(LineController()).lineIndex;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [0, 1, 2, 3]
          .map(
            (i) => GestureDetector(
              onTap: () => line.value = i,
              child: Obx(
                () => FilterChipWidget(
                  onSelected: (_) => line.value = i,
                  isSelected: line.value == i,
                  text: 'Звено ${i + 1}',
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
