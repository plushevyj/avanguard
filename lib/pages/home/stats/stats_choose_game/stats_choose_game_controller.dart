import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../module/game/controller/game_controller.dart';
import '../../../../module/game/model/past_game.dart';

class StatsChooseGameController extends GetxController {
  static final _gamesController = Get.put(GameController());
  var games = <PastGame>[].obs;

  // ignore: avoid-passing-async-when-sync-expected
  void init() => pagingController.addPageRequestListener(getGames);

  final pagingController = PagingController<int, PastGame>(firstPageKey: 1);

  Future<void> getGames(int pageKey) async {
    final newItems = await _gamesController.getPastGames(pageKey);
    newItems.isLastPages
        ? pagingController.appendLastPage(newItems.games)
        : pagingController.appendPage(newItems.games, ++pageKey);
  }
}
