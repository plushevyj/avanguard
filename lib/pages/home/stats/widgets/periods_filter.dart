import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/filter_chip_widget.dart';
import '../period.dart';

class PeriodsFilter extends StatelessWidget {
  final bool isOt;
  final dynamic controller;

  const PeriodsFilter({required this.controller, required this.isOt, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterChipWidget(
            isSelected: controller.filter.value == Period.all,
            onSelected: (_) => controller.filterTap(Period.all),
            label: const Text('все'),
          ),
          for (var i = 1; i < 4; ++i)
            FilterChipWidget(
              isSelected: controller.filter.value == Period.props[i],
              onSelected: (_) => controller.filterTap(Period.props[i]),
              label: Text('$i-й пер.'),
            ),
          if (isOt)
            FilterChipWidget(
              isSelected: controller.filter.value == Period.ot,
              onSelected: (_) => controller.filterTap(Period.ot),
              label: const Text('OT'),
            ),
        ],
      ),
    );
  }
}
