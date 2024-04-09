import 'package:get/get.dart';

import '../../../repository/stats_sum_repository.dart';
import 'model/tournament_next_games.dart';
import 'model/tournament_past_games.dart';

class GamesCardController extends GetxController {
  static const repository = StatsSumRepository();

  final pastGames = Rxn<MKCTablePagePastGamesResponseDto>();
  final nextGames = Rxn<MKCTablePageNextGameResponseDto>();
  final uiState = GamesCardUiState.loading.obs;

  Future<void> init() async {
    uiState.value = GamesCardUiState.loading;
    pastGames.value = await repository.getTournamentPastGames();
    nextGames.value = await repository.getTournamentNextGames();
    uiState.value = pastGames.value == null && nextGames.value == null
        ? GamesCardUiState.empty
        : GamesCardUiState.loaded;
  }
}

enum GamesCardUiState { loading, empty, loaded }
