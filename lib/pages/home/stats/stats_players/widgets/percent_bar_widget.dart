import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../customization/std_colors.dart';

class PercentBarWidget extends StatelessWidget {
  final int percent;
  final bool oneIsMax;

  const PercentBarWidget(this.percent, {required this.oneIsMax, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final relativePercent = oneIsMax ? percent.toDouble() : percent / 100;
    final relativePercent = percent / 100;
    return Row(
      children: [
        Expanded(
          child: LinearPercentIndicator(
            backgroundColor: Colors.white,
            isRTL: true,
            lineHeight: 6,
            padding: EdgeInsets.zero,
            progressColor: StdColors.yellow,
            percent: relativePercent.isNegative ? relativePercent.abs() : .05,
          ),
        ),
        Expanded(
          child: LinearPercentIndicator(
            backgroundColor: Colors.white,
            lineHeight: 6,
            padding: EdgeInsets.zero,
            progressColor: Grey.g68,
            percent: relativePercent.isNegative ? .05 : relativePercent.abs(),
          ),
        ),
      ],
    );
  }
}
