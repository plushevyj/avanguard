import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../../customization/std_colors.dart';

class ZoneCircularWidget extends StatelessWidget {
  final bool weAtHome;
  final String title;

  ZoneCircularWidget({
    required num? home,
    required num? away,
    required num? percent,
    required this.weAtHome,
    required this.title,
    Key? key,
  })  : _home = home?.toInt() ?? -1,
        _away = away?.toInt() ?? -1,
        _percentLabel = (percent?.toInt() ?? -1).toString(),
        super(key: key);

  final int _home;
  final int _away;
  final String _percentLabel;

  // percent in widget must be reversed
  double get _percent => (weAtHome ? _away : _home) / (_home + _away);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(27, 16, 26, 21),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_home.toString(), style: Get.textTheme.bodyMedium),
              const SizedBox(width: 4),
              CircularPercentIndicator(
                backgroundColor: weAtHome ? StdColors.red : Grey.g68,
                lineWidth: 11,
                percent: _percent,
                progressColor: weAtHome ? Grey.g68 : StdColors.red,
                radius: 36,
                center:
                    Text('$_percentLabel%', style: Get.textTheme.titleMedium),
              ),
              const SizedBox(width: 4),
              Text(_away.toString(), style: Get.textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: 4),
          Text(title, style: Get.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
