import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../model/goalkeeper_stats.dart';
import '../repository/stats_goalkeeper_repository.dart';

class StatsGoalkeepersController extends GetxController {
  static const _repository = StatsGoalkeeperRepository();

  final stats = Rxn<GoalkeeperStats>();
  final isLoaded = false.obs;
  final isGridLoaded = false.obs;

  Future<GoalkeeperStats> getStats(String id) async => await _repository.getStats([id]);

  void load() async {
    isLoaded.value = false;
    isGridLoaded.value = false;
    final id = Get.find<StatsController>().statisticId;
    stats.value = await getStats(id);
    isLoaded.value = true;
    isGridLoaded.value = stats.value?.topStats != null;
  }
}
