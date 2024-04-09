import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import '../../../../../widgets/multi_select/multi_select.dart';
import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../../stats_shots/stats_shots_filters/entity/plrs.dart';
import 'stats_goalkeepers_filters_controller.dart';

class StatsGoalkeepersFiltersPage extends StatelessWidget {
  const StatsGoalkeepersFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsGoalkeepersFiltersController(), permanent: true)
      ..getGoalkeepers();
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
            // MultiSelectWidget(),
            GoalkeeperFilter(c),
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

class GoalkeeperFilter extends StatelessWidget {
  final StatsGoalkeepersFiltersController c;

  const GoalkeeperFilter(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (c.goalkeepers.value == null) {
        return const Center(child: CircularProgressIndicator.adaptive());
      } else if (c.goalkeepers.value!.names!.length == 1) {
        // If only 1 goalkeeper he should be selected initially
        // and multiselect should be disabled.
        return AbsorbPointer(
          child: MultiSelect(
            [c.goalkeepers.value!.names!.first.playerName ?? ''],
            controller: MultiSelectController(),
            labelText: 'Вратарь',
            onSelect: (_) {},
            initialSelected: const [0],
            enabled: false,
          ),
        );
      } else if (c.goalkeepers.value!.names!.length > 1) {
        return MultiSelect(
          c.goalkeepers.value!.names!.map((e) => e.playerName!).toList(),
          controller: MultiSelectController(),
          labelText: 'Вратарь',
          onSelect: c.setGoalkeepers,
          initialSelected: c.goalkeepersInitial,
        );
      } else {
        return const SizedBox();
      }
    });
  }
}
