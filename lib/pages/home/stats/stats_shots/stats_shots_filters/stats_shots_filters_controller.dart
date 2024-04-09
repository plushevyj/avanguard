import 'package:get/get.dart';

import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../period.dart';
import '../../stats_controller.dart';
import '../widgets/players_filter/repository/shots_players_filter_repository.dart';
import '../widgets/playground/repository/playground_repository.dart';
import '../widgets/shots_card/repository/shots_repository.dart';
import 'entity/importance.dart';
import 'entity/plrs.dart';

class StatsShotsFiltersController extends GetxController {
  // Used in select, so 1 value.
  var importance = Importance.allLabel.obs;

  // Used in multiselect, have labels and actual data (check Pirs class).
  var plrsData = <String>[];
  List<int>? plrsInitial;
  final plrsFilterController = MultiSelectController();

  // Used in multiselect, have only actual data, but it depends on match stats.
  var periodsData = <String>[];
  List<int>? periodsInitial;
  final periodsFilterController = MultiSelectController();

  void collapse() {
    plrsFilterController.collapse();
    periodsFilterController.collapse();
  }

  var periods = [
    Period.first,
    Period.second,
    Period.third,
    if (ShotsPlayersFilterRepository.isOt) Period.ot,
  ];

  void setPirs(List indexes) {
    plrsData = indexes.map((i) => Plrs.data[i]).toList();
    plrsInitial = List<int>.from(indexes);
  }

  void setPeriods(List indexes) {
    periodsData = indexes.map((i) => periods[i]).toList();
    periodsInitial = List<int>.from(indexes);
  }

  void setImportance(String value) => importance.value = value;

  void applyFilters() {
    ShotsRepository.importance = Importance.map[importance.value]!;
    ShotsPlayersFilterRepository.importance = Importance.map[importance.value]!;
    PlaygroundRepository.importance = Importance.map[importance.value]!;
    ShotsRepository.plrs = ShotsPlayersFilterRepository.plrs = plrsData;
    PlaygroundRepository.plrs = plrsData;
    ShotsRepository.periods = PlaygroundRepository.periods = periodsData;
    ShotsPlayersFilterRepository.periods = periodsData;
    getData();
    Get.back();
  }

  void reset() {
    ShotsRepository.importance = Importance.all;
    PlaygroundRepository.importance = Importance.all;
    ShotsPlayersFilterRepository.importance = Importance.all;
    ShotsRepository.plrs = ShotsPlayersFilterRepository.plrs = [];
    PlaygroundRepository.plrs = [];
    ShotsRepository.periods = ShotsPlayersFilterRepository.periods = [];
    PlaygroundRepository.periods = [];
    plrsFilterController.clear();
    periodsFilterController.clear();
  }

  void getData() => Get.find<StatsController>()
    ..getShotsPlayersFilter()
    ..getPlayground()
    ..getShotsCard();
}
