import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../../customization/pics.dart';
import '../../../../../../../customization/std_colors.dart';
import '../../../../../../../widgets/std_loader.dart';
import '../controller/player_stats_card_controller.dart';
import '../model/player_stats.dart';
import 'widgets/best_player_widget.dart';
import 'widgets/player_stats_tile.dart';

class PlayerStatsCard extends StatelessWidget {
  final int _index;

  const PlayerStatsCard(this._index, {Key? key}) : super(key: key);

  String get title => switch (_index) {
        == 0 => 'Нападающие',
        == 1 => 'Защитники',
        == 2 => 'Вратари',
        _ => '',
      };

  @override
  Widget build(BuildContext context) {
    final c = Get.find<PlayerStatsCardController>();
    return Obx(
      () {
        final rxStat = c.stats[_index];
        if (c.loaders[_index].isFalse) return const StdLoader();
        final stat = rxStat.value as PlayerStats;
        final isGoaltender = stat.asList.length == 2;
        return Container(
          margin: const EdgeInsets.only(left: Indents.x),
          decoration: StdDecor.card,
          width: Get.width - Indents.x * 4,
          padding: const EdgeInsets.all(Indents.x),
          child: Column(
            children: [
              Text(title, style: Get.textTheme.displayMedium),
              const SizedBox(height: Indents.x),
              DefaultTabController(
                length: isGoaltender ? 2 : 4,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: StdColors.primary.shade700,
                      labelStyle: Get.textTheme.titleSmall,
                      unselectedLabelColor: Grey.g54,
                      indicatorWeight: 2,
                      tabs: [
                        if (isGoaltender) ...[
                          const Tab(child: Text('%ОБ')),
                          const Tab(child: Text('КН')),
                        ] else ...[
                          const Tab(child: Text('Очки')),
                          const Tab(child: Text('Голы')),
                          const Tab(child: Text('Пасы')),
                          const Tab(child: Text('+/-')),
                        ],
                      ],
                    ),
                    _PlayerCardView(stat),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PlayerCardView extends StatelessWidget {
  final PlayerStats stats;

  const _PlayerCardView(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (stats.asList.every((e) => e.topFive?.isEmpty ?? true)) {
      return const Text('Нет данных');
    }
    return AutoScaleTabBarView(
      children: stats.asList.map((players) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            Row(
              children: [
                Text(
                  'Лучший игрок',
                  style: Get.textTheme.displaySmall,
                ),
                const SizedBox(width: 4),
                SvgPicture.asset(Pics.logo, width: 16, height: 16),
              ],
            ).paddingSymmetric(vertical: 4),
            if (players.bestPlayer != null)
              BestPlayerWidget(players.bestPlayer!),
            const SizedBox(height: 20),
            Text('Топ 5', style: Get.textTheme.displaySmall),
            const SizedBox(height: Indents.x / 2),
            ...?players.topFive
                ?.map((player) => PlayerStatsTile(player))
                .toList(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('...'),
            ),
            ...?players.ourTopFive
                ?.map((player) => PlayerStatsTile(player))
                .toList(),
          ],
        );
      }).toList(),
    );
  }
}
