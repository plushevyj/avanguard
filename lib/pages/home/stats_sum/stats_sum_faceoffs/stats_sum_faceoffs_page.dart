import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/buttons/filters_button.dart';
import '../../stats/stats_faceoffs/stats_faceoffs_filters/stats_faceoffs_filters_page.dart';
import '../../stats/stats_faceoffs/widgets/faceoffs_card/faceoff_card.dart';
import '../../stats/stats_faceoffs/widgets/faceoffs_playground/faceoffs_playground_widget.dart';
import '../../stats/stats_faceoffs/widgets/zones_circular_wrap.dart';
import '../widgets/match_picker/match_picker.dart';
import 'stats_sum_faceoffs_controller.dart';

class StatsSumFaceoffsPage extends StatelessWidget {
  const StatsSumFaceoffsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StatsSumFaceoffsController());
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(Indents.x, 12, Indents.x, 47),
        child: Column(
          children: [
            const MatchPicker(),
            FiltersButton(
              onTap: () => Get.to(() => const StatsFaceoffsFiltersPage()),
            ),
            Container(
              padding: const EdgeInsets.all(Indents.x),
              decoration: StdDecor.card,
              child: Column(
                children: [
                  const FaceoffsCard(true),
                  const SizedBox(height: Indents.y),
                  const ZonesCircularWrap(),
                  const SizedBox(height: Indents.x),
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
    );
  }
}
