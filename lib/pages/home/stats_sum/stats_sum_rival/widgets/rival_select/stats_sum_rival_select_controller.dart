import 'package:get/get.dart';

import '../../../repository/stats_sum_repository.dart';
import '../../stats_sum_rival_controller.dart';
import 'model/statistics_get_ep_enemy_list_item_dto.dart';

class StatsSumRivalSelectController extends GetxController {
  static const repository = StatsSumRepository();
  List<StatisticsGetEPEnemyListItemDto> rivalList = [];
  final isLoaded = false.obs;
  String tournamentName = '';

  final  rival = Rxn<StatisticsGetEPEnemyListItemDto>();

  Future<void> init() async {
    isLoaded.value = false;
    tournamentName = StatsSumRepository.tournament.tournamentName;
    rivalList = await repository.getTournamentTeamList();
    if (rivalList.isEmpty) return;
    setResultType(rivalList.first);
    isLoaded.value = true;
  }

  void setResultType(rivalV) {
    print('осталось');
    rival.value = rivalV;
    StatsSumRepository.setTeamMKCId(rival.value!.teamId);
    Get.put(StatsSumRivalController()).updateData();
  }
}
