import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../customization/std_colors.dart';
import '../pages/home/stats/stats_overview/model/primary_metric.dart';

class LinearMetric extends StatelessWidget {
  final PrimaryMetric metric;
  final bool? weAtHome;

  const LinearMetric(
    this.metric, {
     this.weAtHome,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(metric.data.home, style: Get.textTheme.displaySmall),
            Text(metric.name, style: Get.textTheme.displaySmall),
            Text(metric.data.away, style: Get.textTheme.displaySmall),
          ],
        ),
        const SizedBox(height: Indents.internal),
        Row(
          children: [
            Expanded(
              child: LinearPercentIndicator(
                barRadius: const Radius.circular(6),
                backgroundColor: StdColors.border12,
                isRTL: true,
                lineHeight: 6,
                padding: EdgeInsets.zero,
                progressColor: weAtHome ?? true ? StdColors.red : Grey.g68,
                percent: metric.data.homePercent == null
                    ? 0
                    : metric.data.homePercent! / 100,
              ),
            ),
            const SizedBox(width: Indents.internal),
            Expanded(
              child: LinearPercentIndicator(
                barRadius: const Radius.circular(6),
                backgroundColor: StdColors.border12,
                lineHeight: 6,
                padding: EdgeInsets.zero,
                progressColor: weAtHome ?? true ? Grey.g68 : StdColors.red,
                percent: metric.data.awayPercent == null
                    ? 0
                    : metric.data.awayPercent! / 100,
              ),
            ),
          ],
        ),
        const SizedBox(height: Indents.y),
      ],
    );
  }
}
