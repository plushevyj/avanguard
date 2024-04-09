import 'package:get/get.dart';

import '../../../../../core/utils/sort.dart';
import '../../repository/stats_sum_repository.dart';
import 'model/statistics_classic_tab_item_dto.dart';

class StatsSumFullPlayersStatsController extends GetxController {
  static const repository = StatsSumRepository();
  var playerStatsList = <StatisticsClassicTabItemDto>[].obs;

  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;
  final isLoaded = false.obs;

  static final _sortBy = <int, dynamic>{
    0: (StatisticsClassicTabItemDto e) => e.student.playerNumber,
    1: (StatisticsClassicTabItemDto e) => e.score?.value,
    2: (StatisticsClassicTabItemDto e) => e.goals?.value,
    3: (StatisticsClassicTabItemDto e) => e.assists?.value,
    4: (StatisticsClassicTabItemDto e) => e.plusMinus?.value,
    5: (StatisticsClassicTabItemDto e) => e.plus,
    6: (StatisticsClassicTabItemDto e) => e.minus,
  };

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  late bool isFirstSort;

  Future<void> init() async {
    isLoaded.value = false;
    playerStatsList.value = await repository.getFullPlayersStats();
    isLoaded.value = true;
  }

  late List<StatisticsClassicTabItemDto> original;

  void sortData(int index, bool _) {
    playerStatsList.sortedByRx(_sortBy[index], isAscend);
    sortColumnIndex = index;
    isAscend.toggle();
  }
}
