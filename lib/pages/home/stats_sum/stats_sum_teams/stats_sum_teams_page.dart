import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/std_loader.dart';
import '../../../../widgets/linear_metric.dart';
import '../../stats/widgets/periods_filter.dart';
import '../widgets/match_picker/match_picker.dart';
import 'stats_sum_teams_controller.dart';

class StatsSumTeamsPage extends StatelessWidget {
  const StatsSumTeamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumTeamsController())..init();
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Indents.x),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: Indents.x),
              child: MatchPicker(),
            ),
            const Gap(Indents.internal),
            c.isFilterLoaded.isFalse
                ? const SizedBox()
                : PeriodsFilter(controller: c, isOt: true),
            if (c.isLoaded.isFalse)
              const StdLoader()
            else ...[
              ...c.matches.value!.metrics
                  .map((metric) => LinearMetric(metric))
                  .toList(growable: false),
            ],
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
