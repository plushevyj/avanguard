import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/game/model/next_game.dart';

class NextGameWidget extends StatelessWidget {
  final NextGame game;

  const NextGameWidget(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: StdColors.border24),
      ),
      padding: const EdgeInsets.only(top: Indents.internal),
      margin: const EdgeInsets.symmetric(vertical: Indents.x / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${DateFormat.yMd().format(game.date)}, '
            '${DateFormat.Hm().format(game.date)} | ${game.gameType}',
            style: Get.textTheme.bodySmall,
          ),
          const SizedBox(height: Indents.internal),
          Container(
            width: double.infinity,
            height: 1,
            color: StdColors.border24,
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    game.homeTeamName,
                    style: Get.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: StdColors.border24,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    game.awayTeamName,
                    style: Get.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
