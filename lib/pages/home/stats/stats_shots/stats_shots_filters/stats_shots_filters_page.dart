import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import '../../../../../widgets/multi_select/multi_select.dart';
import 'entity/importance.dart';
import 'entity/plrs.dart';
import 'stats_shots_filters_controller.dart';

class StatsShotsFiltersPage extends StatelessWidget {
  const StatsShotsFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShotsFiltersController(), permanent: true);
    return GestureDetector(
      onTap: c.collapse,
      child: Scaffold(
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
              MultiSelect(
                Plrs.labels,
                controller: c.plrsFilterController,
                labelText: 'Составы',
                onSelect: c.setPirs,
                initialSelected: c.plrsInitial,
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
                controller: c.periodsFilterController,
                labelText: 'Период',
                onSelect: c.setPeriods,
                initialSelected: c.periodsInitial,
              ),
              ResetTextButton(onTap: c.reset),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ApplyButton(onTap: c.applyFilters),
      ),
    );
  }
}
