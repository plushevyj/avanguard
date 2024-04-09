import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../stats/stats_shots/widgets/shots_card/shots_card.dart';
import '../widgets/match_picker/match_picker.dart';
import 'controller/stats_sum_shots_controller.dart';
import 'widgets/stats_sum_shots_playground/view/stats_sum_shots_playground.dart';
import 'widgets/stats_sum_shots_playground_filter/playground_filter_widget.dart';

class StatsSumShotsPage extends StatelessWidget {
  const StatsSumShotsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumShotsController())..init();
    return GestureDetector(
      onTap: c.playersFilterController.collapse,
      child: const SingleChildScrollView(
        padding: EdgeInsets.all(Indents.x),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Indents.x),
              child: MatchPicker(),
            ),
            // const Gap(Indents.internal),
            // FiltersButton(
            //   onTap: () => Get.to(() => const StatsShotsFiltersPage()),
            // ),
            // const SizedBox(height: 20),
            ShotsCard(),
            SizedBox(height: 44),
            _PlaygroundCard(),
          ],
        ),
      ),
    );
  }
}

class _PlaygroundCard extends StatelessWidget {
  const _PlaygroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: StdDecor.card,
      padding: const EdgeInsets.symmetric(horizontal: Indents.x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(Indents.x),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Карта бросков', style: Get.textTheme.displaySmall),
          ),
          const Gap(Indents.y),
          PlaygroundFilterWidget(
            Get.find<StatsSumShotsController>().playersFilterController,
          ),
          const Gap(Indents.y),
          Text(
            'зона атаки',
            style: Get.textTheme.bodyLarge?.apply(
              color: Colors.black.withOpacity(.72),
            ),
          ),
          const SizedBox(height: 8),
          const StatsSumShotsPlayground(),
          const SizedBox(height: 8),
          Text(
            'зона защиты',
            style: Get.textTheme.bodyLarge?.apply(
              color: Colors.black.withOpacity(.72),
            ),
          ),
        ],
      ),
    );
  }
}
