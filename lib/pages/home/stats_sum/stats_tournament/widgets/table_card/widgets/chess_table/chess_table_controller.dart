import 'package:get/get.dart';

import '../../../../../../../../core/utils/sort.dart';
import '../../../../../repository/stats_sum_repository.dart';
import '../../model/statistics_mkc_chess_response.dart';

class ChessTableController extends GetxController {
  static const repository = StatsSumRepository();
  late StatisticsMKCChessResponse chess;
  var rows = <StatisticsMKCChessRowItemDto>[].obs;

  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;
  final isLoaded = false.obs;

  static final _sortBy = <int, dynamic>{
    1: (StatisticsMKCChessRowItemDto e) => e.puckDifference,
    2: (StatisticsMKCChessRowItemDto e) => e.score,
  };

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  var isFirstSort = true;

  Future<void> start() async {
    isLoaded.value = false;
    chess = await repository.getTable(type: 'chess');
    rows.value = [...chess.rows];
    isLoaded.value = true;
    isFirstSort = true;
  }

  List<StatisticsMKCChessRowItemDto> original = [];

  void sortData(int index, bool _) {
    if (isFirstSort) original = rows.toList();

    switch (index) {
      case > 0:
        rows.sortedByRx(_sortBy[index], isAscend);
      default:
        rows.value = [...original];
    }

    sortColumnIndex = index;
    isAscend.toggle();
    isFirstSort = false;
  }

  var viewAsNumber = false.obs;
}
