import 'package:get/get.dart';

import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../period.dart';
import '../../stats_controller.dart';
import '../../stats_overview/repository/stats_overview_repository.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../../stats_shots/stats_shots_filters/entity/plrs.dart';
import '../widgets/faceoffs_card/repository/faceoff_repository.dart';
import '../widgets/faceoffs_playground/repository/faceoffs_playground_repository.dart';

class StatsFaceoffsFiltersController extends GetxController {
  // Used in select, so 1 value.
  var importance = Importance.allLabel.obs;

  // Used in multiselect, have labels and actual data (check Pirs class).
  var plrsData = <String>[];

  // Used in multiselect, have only actual data, but it depends on match stats.
  var periodsData = <String>[];

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

  void applyFilters() {
    FaceoffRepository.importance = Importance.map[importance.value]!;
    FaceoffRepository.plrs = FaceoffsPlaygroundRepository.plrs = plrsData;
    FaceoffRepository.periods =
        FaceoffsPlaygroundRepository.periods = periodsData;
    FaceoffsPlaygroundRepository.importance = Importance.map[importance.value]!;
    getData();
    Get.back();
  }

  void reset() {
    FaceoffRepository.importance =
        FaceoffsPlaygroundRepository.importance = Importance.all;
    importance.value = Importance.allLabel;
    FaceoffRepository.plrs = FaceoffsPlaygroundRepository.plrs = [];
    plrsController.clear();
    FaceoffRepository.periods = FaceoffsPlaygroundRepository.periods = [];
    periodsController.clear();
  }

  void getData() => Get.find<StatsController>()
    ..getFaceoffsCard()
    ..getFaceoffsPlayground();
}
