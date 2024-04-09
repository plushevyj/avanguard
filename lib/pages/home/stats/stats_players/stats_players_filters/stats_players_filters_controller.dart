import 'package:get/get.dart';

import '../../../../../customization/constants.dart';
import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../period.dart';
import '../../stats_controller.dart';
import '../../stats_overview/repository/stats_overview_repository.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../../stats_shots/stats_shots_filters/entity/plrs.dart';
import '../controller/stats_players_controller.dart';
import '../repository/stats_players_repository.dart';

class StatsPlayersFiltersController extends GetxController {
  // Used in select, so 1 value.
  var importance = Importance.allLabel.obs;

  // Used in multiselect, have labels and actual data (check Pirs class).
  var plrsData = <String>[];
  List<int>? plrsInitial;

  // Used in multiselect, have only actual data, but it depends on match stats.
  var periodsData = <String>[];
  List<int>? periodsInitial;

  final periodsController = MultiSelectController();
  final plrsController = MultiSelectController();


  var isDefenseman = false.obs;
  var isWinger = false.obs;

  final tableController = Get.put(StatsPlayersController());

  void updateTable() => tableController.updateTable();

  void chooseRole(RxBool role) {
    role.toggle();
    if (isDefenseman.value == isWinger.value) {
      StatsPlayersRepository.role = null;
    } else {
      StatsPlayersRepository.role = isWinger.isTrue ? kWinger : kDefenseman;
    }
    updateTable();
  }

  var periods = [
    Period.first,
    Period.second,
    Period.third,
    if (StatsOverviewRepository.isOt) Period.ot,
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
    StatsPlayersRepository.importance = Importance.map[importance.value]!;
    StatsPlayersRepository.plrs = plrsData;
    StatsPlayersRepository.periods = periodsData;
    getData();
    Get.back();
  }

  void reset() {
    StatsPlayersRepository.importance = Importance.all;
    StatsPlayersRepository.plrs = StatsPlayersRepository.periods = [];
    periodsController.clear();
    plrsController.clear();
    importance.value = Importance.allLabel;
  }

  void getData() => Get.find<StatsController>()
    ..getStatsPlayersClassicTable()
    ..getStatsPlayersCorsiTable()
    ..getStatsPlayersDekingTable()
    ..getStatsPlayersFoulTable()
    ..getStatsPlayersPassesTable()
    ..getStatsPlayersPowerStruggleTable()
    ..getStatsPlayersPuckBattleTable()
    ..getStatsPlayersShotsTable()
    ..getStatsPlayersTimeTable();
}
