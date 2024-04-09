import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/buttons/button.dart';
import '../../../../../widgets/std_loader.dart';
import '../../../../../widgets/filters/dropdown_button_widget.dart';
import '../../../../../widgets/multi_select/multi_select.dart';
import 'match_picker_controller.dart';
import 'model/stats_sum_type.dart';
import 'widgets/hide_filters_button.dart';
import 'widgets/matches_card.dart';
import 'widgets/matches_count_row.dart';
import 'widgets/only_against_top_three_button.dart';

class MatchPickerDialog extends StatelessWidget {
  const MatchPickerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MatchPickerController());
    return PopScope(
      onPopInvoked: (_) => c.cancel(),
      child: Obx(() {
        if (c.isLoaded.isFalse) return const StdLoader();
        if (c.isNoTournaments.isTrue) return const Text('Нет турниров');
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(vertical: Indents.y),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Indents.internal),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Выбор матчей',
                                      style: Get.textTheme.displayMedium,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: Get.back,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: Colors.black.withOpacity(.54),
                                    ),
                                  ),
                                ],
                              ),
                              if (c.isShowFilters.isTrue) ...[
                                const Gap(Indents.y),
                                DropdownButtonWidget(
                                  items: c.tournaments
                                      .map((tournament) => tournament.view)
                                      .toList(),
                                  onChosen: (tournament) =>
                                      c.setCurrentTournament(tournament),
                                  labelText: 'Турнир',
                                  value: c.tournamentView.value,
                                ),
                                const Gap(Indents.x),
                                MultiSelect(
                                  StatsSumType.labels,
                                  controller: c.typeController,
                                  labelText: 'Тип игры',
                                  onSelect: c.setType,
                                ),
                                const Gap(Indents.x),
                                MultiSelect(
                                  StatsSumGameType.labels,
                                  controller: c.gameTypeController,
                                  labelText: 'Итог игры',
                                  onSelect: c.setGameType,
                                ),
                                const Gap(Indents.x),
                                MultiSelect(
                                  StatsSumPuckDiff.labels,
                                  controller: c.puckDiffController,
                                  labelText: 'Разница счёта',
                                  onSelect: c.setPuckDiff,
                                ),
                                const Gap(Indents.x),
                                const OnlyAgainstTopThreeButton(),
                              ],
                              const HideFiltersButton(),
                              const Gap(Indents.x),
                            ],
                          ),
                        ),
                        const MatchesCard(),
                        const Gap(Indents.x),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: StdDecor.card,
                padding: const EdgeInsets.all(Indents.x),
                child: Column(
                  children: [
                    const MatchesCountRow(),
                    const Gap(Indents.y),
                    SizedBox(
                      width: double.infinity,
                      child: Button(
                        onTap: c.matchesCount.value == 0
                            ? null
                            : () {
                          c.chooseMatches();
                          Get.back();
                        },
                        text: 'Применить',
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Button(
                        onTap: () {
                          c.cancel();
                          Get.back();
                        },
                        text: 'Сбросить',
                        buttonColor: ButtonColor.third,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
