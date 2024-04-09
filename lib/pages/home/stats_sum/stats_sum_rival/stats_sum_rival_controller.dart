import 'package:get/get.dart';

import '../stats_tournament/widgets/games_card/games_card_controller.dart';
import '../stats_tournament/widgets/player_stats_card_view/controller/player_stats_card_controller.dart';

class StatsSumRivalController extends GetxController {
  void updateData() {
    Get.find<PlayerStatsCardController>().init(false);
    Get.find<GamesCardController>().init();
  }
}
