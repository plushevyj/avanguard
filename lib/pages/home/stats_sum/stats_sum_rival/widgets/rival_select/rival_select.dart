import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/buttons/button.dart';
import '../../../../../../widgets/std_loader.dart';
import '../../../../../../widgets/multi_select/select_widget.dart';
import '../../stats_sum_full_players_stats/stats_sum_full_players_stats_page.dart';
import 'model/statistics_get_ep_enemy_list_item_dto.dart';
import 'stats_sum_rival_select_controller.dart';

class RivalSelect extends StatelessWidget {
  const RivalSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumRivalSelectController())..init();
    return Container(
      margin: const EdgeInsets.only(right: Indents.x),
      padding: const EdgeInsets.all(Indents.x),
      decoration: StdDecor.card,
      child: Obx(
        () => c.isLoaded.isFalse
            ? const StdLoader()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Турнир',
                    style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
                  ),
                  const Gap(4),
                  Text(c.tournamentName, style: Get.textTheme.bodyLarge),
                  const Gap(20),
                  Text(
                    'Соперник',
                    style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
                  ),
                  if (c.rival.value != null)
                    SelectWidget(
                      data: c.rivalList,
                      onChosen: c.setResultType,
                      value: c.rival.value,
                      child: (item) => TournamentCurrentItemRow(item),
                    ),
                  const Gap(20),
                  SizedBox(
                    width: double.infinity,
                    child: Button(
                      onTap: () =>
                          Get.to(() => const StatsSumFullPlayersStatsPage()),
                      text: 'Смотреть статистику по игрокам',
                      buttonColor: ButtonColor.secondary,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}



class TournamentCurrentItemRow extends StatelessWidget {
  final StatisticsGetEPEnemyListItemDto rival;

  const TournamentCurrentItemRow(this.rival, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .7,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text(rival.name, style: Get.textTheme.bodyLarge),
            const Gap(8),
            Text(
              'след игра: ${rival.nextGameDate.split('-').join('.')}',
              style: Get.textTheme.bodyLarge?.apply(color: Grey.g54),
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
