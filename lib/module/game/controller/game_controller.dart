import 'package:get/get.dart';

import '../model/next_game.dart';
import '../model/past_game.dart';
import '../model/past_games.dart';
import '../repository/game_repository_mob.dart';

class GameController extends GetxController {
  static const repository = GameRepositoryMob();

  final past6Games = <PastGame>[].obs;
  final next6Games = <NextGame>[].obs;
  var isLoaded = false.obs;

  @override
  void onInit() {
    getPastGames().then((v) {
      past6Games.value = v.games.take(6).toList();
      isLoaded.toggle();
    });
    super.onInit();
  }

  Future<PastGames> getPastGames([int? page]) => repository.getPastGames(page);

  Future<List<NextGame>> getNextGames() async =>
      next6Games.value = (await repository.getNextGames()).take(6).toList();
}
