import 'package:get/get.dart';

import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../period.dart';
import '../../stats_controller.dart';
import '../../stats_overview/repository/stats_overview_repository.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../../stats_shots/stats_shots_filters/entity/plrs.dart';
import '../model/goalkeepers.dart';
import '../repository/stats_goalkeeper_repository.dart';

class StatsGoalkeepersFiltersController extends GetxController {

  // Used in select, so 1 value.
  var importance = Importance.allLabel.obs;

  // Used in multiselect, have labels and actual data (check Pirs class).
  var plrsData = <String>[];

  // Used in multiselect, have only actual data, but it depends on match stats.
  var periodsData = <String>[];

  var goalkeepers = Rxn<Goalkeepers>();
  var goalkeepersIds = <String>[];
  List<int>? goalkeepersInitial;

  final periodsController = MultiSelectController();
  final plrsController = MultiSelectController();

  var periods = [
    Period.first,
    Period.second,
    Period.third,

    // Not really safe move, but i have no other places where i can safely get OT info.
    if (StatsOverviewRepository.isOt) Period.ot,
  ];

  void setPirs(List indexes) {
    plrsData = indexes.map((i) => Plrs.data[i]).toList();
  }

  void setPeriods(List indexes) {
    periodsData = indexes.map((i) => periods[i]).toList();
  }

  void setImportance(String value) => importance.value = value;

  void setGoalkeepers(List indexes) {
    if (goalkeepers.value != null) {
      goalkeepersIds =
          indexes.map((i) => goalkeepers.value!.names![i].playerId!).toList();
      goalkeepersInitial = List<int>.from(indexes);
    }
  }

  Future<void> getGoalkeepers() async {
    goalkeepers.value = await Get.put(StatsController()).getGoalkeepers();
  }

  void applyFilters() {
    StatsGoalkeeperRepository.importance = Importance.map[importance.value]!;
    StatsGoalkeeperRepository.plrs = plrsData;
    StatsGoalkeeperRepository.periods = periodsData;
    StatsGoalkeeperRepository.goalkeeperIds = goalkeepersIds;
    getData();
  }

  void reset() {
    StatsGoalkeeperRepository.importance = Importance.all;
    importance.value = Importance.allLabel;
    StatsGoalkeeperRepository.plrs = [];
    plrsController.clear();
    StatsGoalkeeperRepository.periods = [];
    periodsController.clear();
    StatsGoalkeeperRepository.goalkeeperIds = [];
  }

  void getData() => Get.put(StatsController()).getGoalkeeperStats();
}
