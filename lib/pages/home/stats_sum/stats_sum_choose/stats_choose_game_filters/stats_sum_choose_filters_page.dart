import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import 'stats_sum_choose_filters_controller.dart';

class StatsSumChooseFiltersPage extends StatelessWidget {
  const StatsSumChooseFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumChooseFiltersController(), permanent: true);
    return Scaffold(
      appBar: const FiltersAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: Indents.x,
          right: Indents.x,
          top: Indents.y,
        ),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonWidget(
                items: c.seasons.map((e) => e.name).toList(),
                value: c.currentSeasonName.value,
                onChosen: c.setSeason,
                labelText: 'Сезон',
              ),
              ResetTextButton(onTap: c.reset),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ApplyButton(onTap: c.saveFilters),
    );
  }
}
