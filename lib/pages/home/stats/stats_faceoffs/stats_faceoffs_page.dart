import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/buttons/filters_button.dart';
import '../../../../widgets/multi_select/my_gf_multi_select.dart';
import 'stats_faceoffs_filters/stats_faceoffs_filters_page.dart';
import 'widgets/faceoffs_card/faceoff_card.dart';
import 'widgets/faceoffs_playground/faceoffs_playground_widget.dart';
import 'widgets/zones_circular_wrap.dart';

class StatsFaceoffsPage extends StatelessWidget {
  const StatsFaceoffsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playersFilterController = MultiSelectController();
    return Scaffold(
      body: GestureDetector(
        onTap: playersFilterController.collapse,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(Indents.x, 12, Indents.x, 47),
          child: Column(
            children: [
              FiltersButton(
                onTap: () => Get.to(() => const StatsFaceoffsFiltersPage()),
              ),
              Container(
                padding: const EdgeInsets.all(Indents.x),
                decoration: StdDecor.card,
                child: Column(
                  children: [
                    const FaceoffsCard(false),
                    const SizedBox(height: Indents.y),
                    const ZonesCircularWrap(),
                    // PlayersFilterWidget(playersFilterController),
                    const SizedBox(height: Indents.y),
                    Text(
                      'зона атаки',
                      style: Get.textTheme.bodyLarge?.apply(
                        color: Colors.black.withOpacity(.72),
                      ),
                    ),
                    const SizedBox(height: Indents.x / 2),
                    const FaceoffsPlaygroundWidget(),
                    const SizedBox(height: Indents.x / 2),
                    Text(
                      'зона защиты',
                      style: Get.textTheme.bodyLarge?.apply(
                        color: Colors.black.withOpacity(.72),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LegendRow extends StatelessWidget {
  const _LegendRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const CircleAvatar(backgroundColor: StdColors.red, radius: 4),
            Text(' - наша команда;', style: Get.textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: 20),
        Row(
          children: [
            const CircleAvatar(backgroundColor: StdColors.blue, radius: 4),
            Text(' - соперник', style: Get.textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: 20),
        Row(
          children: [
            const CircleAvatar(backgroundColor: Grey.g54, radius: 4),
            Text(' - ничья', style: Get.textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
