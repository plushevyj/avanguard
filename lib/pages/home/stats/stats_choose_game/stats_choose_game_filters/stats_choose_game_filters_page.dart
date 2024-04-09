import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../module/game/model/game_type.dart';
import '../../../../../module/game/model/result_type.dart';
import '../../../../../widgets/date_range_widget.dart';
import '../../../../../widgets/filters/apply_button.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/filters/filters_app_bar.dart';
import '../../../../../widgets/filters/reset_text_button.dart';
import 'stats_choose_game_filters_controller.dart';

class StatsChooseGameFiltersPage extends StatelessWidget {
  const StatsChooseGameFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsChooseGameFiltersController(), permanent: true);
    return Scaffold(
      appBar: FiltersAppBar(onTap: c.refreshGames),
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
                mapItems: GameType.map,
                value: c.currentGameType.value,
                onChosen: c.setGameType,
                labelText: 'Тип игры',
              ),
              const SizedBox(height: 10),
              DropdownButtonWidget(
                mapItems: ResultType.map,
                value: c.currentResultType.value,
                onChosen: c.setResultType,
                labelText: 'Итог',
              ),
              const SizedBox(height: 10),
              DateRangeWidget(c),
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
