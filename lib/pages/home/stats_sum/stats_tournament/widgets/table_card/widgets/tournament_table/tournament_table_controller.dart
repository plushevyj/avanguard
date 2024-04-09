import 'package:get/get.dart';

import '../../../../../../../../core/utils/sort.dart';
import '../../../../../repository/stats_sum_repository.dart';
import '../../model/statistics_mkc_table_item_dto.dart';

class TournamentTableController extends GetxController {
  static const repository = StatsSumRepository();
  var classicGamesList = <StatisticsMKCTableItemDto>[].obs;

  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;
  final isLoaded = false.obs;

  static final _sortBy = <int, dynamic>{
    1: (StatisticsMKCTableItemDto e) => e.games,
    2: (StatisticsMKCTableItemDto e) => e.wins,
    3: (StatisticsMKCTableItemDto e) => e.winsOT,
    4: (StatisticsMKCTableItemDto e) => e.loses,
    5: (StatisticsMKCTableItemDto e) => e.losesOT,
    6: (StatisticsMKCTableItemDto e) => e.puckDiff,
    7: (StatisticsMKCTableItemDto e) => e.score,
    8: (StatisticsMKCTableItemDto e) => e.goals,
    9: (StatisticsMKCTableItemDto e) => e.puckPasses,
  };

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  late bool isFirstSort;

  Future<void> start() async {
    isLoaded.value = false;
    classicGamesList.value = await repository.getTable(type: 'tournament');
    isLoaded.value = true;
    isFirstSort = true;
  }

  late List<StatisticsMKCTableItemDto> original;

  void sortData(int index, bool _) {
    if (isFirstSort) original = classicGamesList.toList();

    switch (index) {
      case > 0 && < 10:
        classicGamesList.sortedByRx(_sortBy[index], isAscend);
      default:
        classicGamesList.value = [...original];
    }

    sortColumnIndex = index;
    isAscend.toggle();
    isFirstSort = false;
  }
}
