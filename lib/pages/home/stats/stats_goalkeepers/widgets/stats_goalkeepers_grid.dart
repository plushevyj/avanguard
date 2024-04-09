import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../model/name_value.dart';

class StatsGoalkeepersGrid extends StatelessWidget {
  final dynamic c;

  const StatsGoalkeepersGrid(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final stats = c.stats.value?.topStats;
        return !c.isGridLoaded.value
            ? const Center(child: CircularProgressIndicator.adaptive())
            : GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: stats!.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: Indents.x,
                  crossAxisSpacing: Indents.x,
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (ctx, i) => StatsGridCard(stats[i]),
              );
      },
    );
  }
}

class StatsGridCard extends StatelessWidget {
  final NameValue? value;

  const StatsGridCard(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Indents.x),
      decoration: StdDecor.card,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value?.value ?? '-',
                style:
                    Get.textTheme.displayLarge?.apply(color: StdColors.primary),
              ),
              Text(
                '-',
                style: Get.textTheme.bodySmall?.apply(color: StdColors.primary),
              ),
            ],
          ),
          Text(value?.name ?? '-', style: Get.textTheme.displaySmall),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ср знач: '),
              Text('-'),
            ],
          ),
        ],
      ),
    );
  }
}
