import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../customization/std_colors.dart';
import '../pages/home/stats/stats_controller.dart';
import '../pages/home/stats/stats_shots/widgets/shots_card/model/shot.dart';

class ShotsCircularIndicator extends StatelessWidget {
  final List<Shot> shots;

  const ShotsCircularIndicator(this.shots, {Key? key}) : super(key: key);

  static const _titles = {
    'homeShots': 'Броски',
    'homeShotsOnGoal': 'Броски в створ',
    'homeShotsOnGoalDangerous': 'Броски в створ\nиз опасной зоны',
    'homeBlockedShots': 'Заблокированные\nброски',
  };

  @override
  Widget build(BuildContext context) {
    // final weAtHome = Get.find<StatsController>().weAtHome;
    const weAtHome = true;
    return Padding(
      padding: const EdgeInsets.fromLTRB(27, 16, 26, 21),
      child: Column(
        children: [
          Text(
            _titles[shots.first.name] ?? '',
            style: Get.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                shots.first.value.toString(),
                style: Get.textTheme.bodyMedium,
              ),
              const SizedBox(width: 4),
              CircularPercentIndicator(
                backgroundColor: weAtHome ?? true ? StdColors.red : Grey.g68,
                lineWidth: 11,
                percent: shots.last.percentValue / 100,
                progressColor: weAtHome ?? true ? Grey.g68 : StdColors.red,
                radius: 36,
                center: Text(
                  '${weAtHome ?? true ? shots.first.percentValue.round() : shots.last.percentValue.round()}%',
                  style: Get.textTheme.titleMedium,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                shots.last.value.toString(),
                style: Get.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
