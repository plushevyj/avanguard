import 'package:get/get.dart';

import '../controller/stats_sum_choose_controller.dart';
import '../model/season.dart';
import '../repository/stats_sum_choose_repository.dart';

class StatsSumChooseFiltersController extends GetxController {
  var dateRange = <DateTime?>[
    // DateTime.now(),
    // DateTime.now(),
  ].obs;

  var currentSeasonName = ''.obs;

  final c = Get.find<StatsSumChooseController>();

  late RxList<Season> seasons;

  @override
  void onInit() {
    seasons = Get.find<StatsSumChooseController>().seasons.obs;
    currentSeasonName.value = seasons.first.name;
    super.onInit();
  }

  void saveFilters() {
    if (currentSeasonName.value.isNotEmpty) {
      StatsSumChooseRepository.seasonId = currentSeasonName.value;
    }
    c.start();
  }

  void setSeason(String seasonName) {
    currentSeasonName.value = seasonName;
  }

  void reset() {
    StatsSumChooseRepository.seasonId = seasons.first.name;
    currentSeasonName.value = seasons.first.name;
    c.start();
  }
}
