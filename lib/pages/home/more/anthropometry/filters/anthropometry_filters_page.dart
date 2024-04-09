import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import '../../../../../widgets/multi_select/multi_select.dart';
import 'anthropometry_filters_controller.dart';
import 'entity/seasons.dart';

class AnthropometryFiltersPage extends StatelessWidget {
  const AnthropometryFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(AnthropometryFiltersController(), permanent: true);
    return Scaffold(
      appBar: FiltersAppBar(onTap: c.getAnthropometry),
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
              Seasons.labels,
              controller: c.seasonsFilterController,
              labelText: 'Сезоны',
              onSelect: c.setSeasons,
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

