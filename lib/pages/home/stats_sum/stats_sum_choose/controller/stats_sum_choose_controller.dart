import 'package:get/get.dart';

import '../../../stats/stats_controller.dart';
import '../model/season.dart';
import '../model/tournament.dart';
import '../repository/stats_sum_choose_repository.dart';
import '../../repository/stats_sum_repository.dart';

class StatsSumChooseController extends GetxController {
  static const repository = StatsSumChooseRepository();

  final tournaments = <Tournament>[].obs;
  var seasons = <Season>[];
  final isLoaded = false.obs;

  Future<void> start() async {
    isLoaded.value = false;
    tournaments.value = await getTournaments();
    isLoaded.value = true;
  }

  Future<List<Tournament>> getTournaments() async {
    seasons = await repository.getSeasons();
    if (seasons.isEmpty) return [];
    StatsSumChooseRepository.seasonId ??= seasons.first.id;
    return await repository.getTournaments();
  }

  void chooseTournament(Tournament tournament) {
    StatsController.isSum = true;
    StatsSumRepository.setQueryParameters(tournament);
  }
}
