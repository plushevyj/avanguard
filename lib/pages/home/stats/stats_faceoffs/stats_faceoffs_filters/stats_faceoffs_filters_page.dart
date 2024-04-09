import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import '../../../../../widgets/multi_select/multi_select.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../../stats_shots/stats_shots_filters/entity/plrs.dart';
import 'stats_faceoffs_filters_controller.dart';

class StatsFaceoffsFiltersPage extends StatelessWidget {
  const StatsFaceoffsFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsFaceoffsFiltersController(), permanent: true);
    return Scaffold(
      appBar: FiltersAppBar(onTap: c.getData),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: Indents.x,
          right: Indents.x,
          top: Indents.y,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            MultiSelect(
              Plrs.labels,
              controller: c.plrsController,
              labelText: 'Составы',
              onSelect: c.setPirs,
            ),
            const SizedBox(height: 10),
            Obx(
              () => DropdownButtonWidget(
                mapItems: Importance.map,
                value: c.importance.value,
                onChosen: c.setImportance,
                labelText: 'Важность',
              ),
            ),
            const SizedBox(height: 10),
            MultiSelect(
              c.periods,
              controller: c.periodsController,
              labelText: 'Период',
              onSelect: c.setPeriods,
            ),
            ResetTextButton(onTap: c.reset),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ApplyButton(onTap: c.applyFilters),
    );
  }
}
