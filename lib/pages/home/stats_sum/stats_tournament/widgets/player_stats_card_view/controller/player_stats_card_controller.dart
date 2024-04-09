import 'dart:ui';

import 'package:get/get.dart';

import '../../../../../../../customization/constants.dart';
import '../../../../../../../customization/std_colors.dart';
import '../../../../repository/stats_sum_repository.dart';
import '../model/player_stats.dart';

class PlayerStatsCardController extends GetxController {
  static const repository = StatsSumRepository();

  final wingers = Rxn<StatisticsMKCTalbePagePlayersBlockWDItemDto>();
  final defensemans = Rxn<StatisticsMKCTalbePagePlayersBlockWDItemDto>();
  final goaltenders =
      Rxn<StatisticsGetMKCTablePagePlayersBlockGoaltendersDto>();

  late final List<Rxn> stats;
  final loaders = [for (int i = 0; i < 3; i++) false.obs];

  var ourTeam = true;

  @override
  void onInit() {
    super.onInit();
    stats = [wingers, defensemans, goaltenders];
  }

  Future<void> init([bool ourTeamArg = true]) async {
    loaders.forEach((element) => element.value = false);
    ourTeam = ourTeamArg;
    wingers.value = await repository.getPlayersStats(playersBlockType: kWinger);
    loaders[0].value = true;
    defensemans.value =
        await repository.getPlayersStats(playersBlockType: kDefenseman);
    loaders[1].value = true;
    goaltenders.value =
        await repository.getPlayersStats(playersBlockType: kGoaltender);
    loaders[2].value = true;
  }

  Color? getColor(StatisticsMKCPlayersStatItemDto player) {
    if (!(player.isOurPlayer ?? false)) return null;
    return ourTeam
        ? StdColors.primary.shade100
        : StdColors.blue.withOpacity(.2);
  }
}
