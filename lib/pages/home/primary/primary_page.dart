import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';
import '../../../module/game/controller/game_controller.dart';
import '../../../widgets/player_tile.dart';
import 'next_game_lines/next_game_lines.dart';
import 'player_diary/player_diary_stage.dart';
import 'widgets/check_dev_widget.dart';
import 'widgets/games.dart';

class PrimaryPage extends StatelessWidget {
  const PrimaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(GameController())
      ..getPastGames()
      ..getNextGames();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          title: const PlayerTile(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Indents.x),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckDevWidget(),
              const PlayerDiaryStage(),
              Text('Следующая игра', style: Get.textTheme.displayMedium),
              const SizedBox(height: 20),
              Obx(() => c.next6Games.isEmpty
                  ? const Text(
                      'Игра и состав ещё не определены',
                      style: TextStyle(color: Grey.g68),
                    )
                  : NextGameLines(c.next6Games.first)),
              const SizedBox(height: Indents.y),
              const _GamesPreview(),
              const Games(),
            ],
          ),
        ),
      ),
    );
  }
}

class _GamesPreview extends StatelessWidget {
  const _GamesPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TabBar(
        labelStyle: const TextStyle(fontWeight: FontWeight.w600),
        overlayColor:
            MaterialStatePropertyAll(StdColors.primary.withOpacity(.14)),
        labelColor: StdColors.primary,
        unselectedLabelColor: Grey.g54,
        indicatorColor: StdColors.primary.shade700,
        tabs: const [
          Tab(text: 'Прошедшие игры'),
          Tab(text: 'Будущие игры'),
        ],
      ),
    );
  }
}
