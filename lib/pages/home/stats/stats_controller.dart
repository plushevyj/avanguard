import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/transformers.dart';

import '../../../core/constants/constants.dart';
import '../../../module/game/model/game_interface.dart';
import '../stats_sum/stats_sum_goalkeepers/controller/stats_goalkeepers_controller.dart';
import '../stats_sum/widgets/match_picker/match_picker_controller.dart';
import '../stats_sum/widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import 'stats_faceoffs/stats_faceoffs_filters/stats_faceoffs_filters_controller.dart';
import 'stats_faceoffs/widgets/faceoffs_card/bloc/faceoffs_bloc.dart';
import 'stats_faceoffs/widgets/faceoffs_playground/bloc/faceoffs_playground_bloc.dart';
import 'stats_faceoffs/widgets/players_filter/bloc/faceoffs_players_filter_bloc.dart';
import 'stats_goalkeepers/bloc/stats_goalkeeper_bloc.dart';
import 'stats_goalkeepers/model/goalkeepers.dart';
import 'stats_goalkeepers/repository/stats_goalkeeper_repository.dart';
import 'stats_goalkeepers/stats_goalkeepers_filters/stats_goalkeepers_filters_controller.dart';
import 'stats_overview/bloc/stats_overview_bloc.dart';
import 'stats_players/stats_players_classic/bloc/stats_players_classic_bloc.dart';
import 'stats_players/stats_players_corsi/bloc/stats_players_corsi_bloc.dart';
import 'stats_players/stats_players_deking/bloc/stats_players_deking_bloc.dart';
import 'stats_players/stats_players_filters/stats_players_filters_controller.dart';
import 'stats_players/stats_players_fouls/bloc/stats_players_foul_bloc.dart';
import 'stats_players/stats_players_passes/bloc/stats_players_passes_bloc.dart';
import 'stats_players/stats_players_power_struggle/bloc/stats_players_power_struggle_bloc.dart';
import 'stats_players/stats_players_puck_battle/bloc/stats_players_puck_battle_bloc.dart';
import 'stats_players/stats_players_shots/bloc/stats_players_shots_bloc.dart';
import 'stats_players/stats_players_time/bloc/stats_players_time_bloc.dart';
import 'stats_shifts/bloc/stats_shifts_bloc.dart';
import 'stats_shots/stats_shots_filters/stats_shots_filters_controller.dart';
import 'stats_shots/widgets/players_filter/bloc/shots_players_filter_bloc.dart';
import 'stats_shots/widgets/playground/bloc/shots_playground_bloc.dart';
import 'stats_shots/widgets/shots_card/bloc/shots_bloc.dart';

class StatsController extends GetxController {
  late String statisticId;
  static List<String> statisticIds = [];
  static bool isSum = false;

  final matches = Get.put(MatchPickerController()).chosenMatches;

  @override
  void onInit() {
    setIds(matches);
    _subscribeToMatches();
    super.onInit();
  }

  final bloc = BlocProvider.of<StatsOverviewBloc>(Get.context!);
  final shotsBloc = BlocProvider.of<ShotsPlaygroundBloc>(Get.context!);
  final shotsCardBloc = BlocProvider.of<ShotsBloc>(Get.context!);
  final faceoffsFiltersBloc =
      BlocProvider.of<FaceoffsPlayersFilterBloc>(Get.context!);
  final shotsFiltersBloc =
      BlocProvider.of<ShotsPlayersFilterBloc>(Get.context!);
  final playersClassicBloc =
      BlocProvider.of<StatsPlayersClassicBloc>(Get.context!);
  final playersCorsiBloc = BlocProvider.of<StatsPlayersCorsiBloc>(Get.context!);
  final playersDekingBloc =
      BlocProvider.of<StatsPlayersDekingBloc>(Get.context!);
  final playersFoulBloc = BlocProvider.of<StatsPlayersFoulBloc>(Get.context!);
  final playersPassesBloc =
      BlocProvider.of<StatsPlayersPassesBloc>(Get.context!);
  final playersPowerStruggleBloc =
      BlocProvider.of<StatsPlayersPowerStruggleBloc>(Get.context!);
  final playersPuckBattleBloc =
      BlocProvider.of<StatsPlayersPuckBattleBloc>(Get.context!);
  final playersShotsBloc = BlocProvider.of<StatsPlayersShotsBloc>(Get.context!);
  final playersTimeBloc = BlocProvider.of<StatsPlayersTimeBloc>(Get.context!);
  final goalkeepersBloc = BlocProvider.of<StatsGoalkeeperBloc>(Get.context!);
  final faceoffsBloc = BlocProvider.of<FaceoffBloc>(Get.context!);
  final faceoffsPlaygroundBloc =
      BlocProvider.of<FaceoffsPlaygroundBloc>(Get.context!);
  final shiftsBloc = BlocProvider.of<StatsShiftsBloc>(Get.context!);

  String gameDate = '-';
  bool? weAtHome;

  void choose(GameInterface game) {
    statisticId = game.statisticId ?? '';
    gameDate = DateFormat('dd.MM.yyyy').format(game.date);
    isSum = false;
  }

  /*
   * Методы во многих местах статистики суммы используются отсюда
   * Поэтому буду вызывать их, предварительно обновляя айдишники
   */
  void _subscribeToMatches() {
    statisticIds = matches.ids;
    matches.stream.debounceTime(kDebounceTime).listen(setIds);
  }

  void setIds(List<StatisticsMKCMatchesResponseDto> matches) {
    statisticIds = matches.ids;
  }

  void getStats([String? period]) {
    bloc.add(StatsOverviewGet(statisticId: statisticId, period: period));
  }

  void getPlayground([List<String>? playerIds]) {
    shotsBloc.add(
      ShotsPlaygroundGet(
        statisticIds: isSum ? statisticIds : [statisticId],
        playerIds: playerIds ?? [],
      ),
    );
  }

  void getShotsPlayersFilter() {
    shotsFiltersBloc.add(ShotsPlayersFilterGet(statisticId));
  }

  void getFaceoffsPlayersFilter() {
    faceoffsFiltersBloc.add(
      FaceoffsPlayersFilterGet(isSum ? statisticIds : [statisticId]),
    );
  }

  void getShotsCard() {
    shotsCardBloc.add(ShotsGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersClassicTable() {
    playersClassicBloc
        .add(StatsPlayersClassicGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersCorsiTable() {
    playersCorsiBloc
        .add(StatsPlayersCorsiGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersDekingTable() {
    playersDekingBloc
        .add(StatsPlayersDekingGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersFoulTable() {
    playersFoulBloc
        .add(StatsPlayersFoulGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersPassesTable() {
    playersPassesBloc
        .add(StatsPlayersPassesGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersPowerStruggleTable() {
    playersPowerStruggleBloc.add(
      StatsPlayersPowerStruggleGet(isSum ? statisticIds : [statisticId]),
    );
  }

  void getStatsPlayersPuckBattleTable() {
    playersPuckBattleBloc
        .add(StatsPlayersPuckBattleGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersShotsTable() {
    playersShotsBloc
        .add(StatsPlayersShotsGet(isSum ? statisticIds : [statisticId]));
  }

  void getStatsPlayersTimeTable() {
    playersTimeBloc.add(
      StatsPlayersTimeGet(isSum ? statisticIds : [statisticId]),
    );
  }

  void getGoalkeeperStats() => isSum
      ? Get.put(StatsSumGoalkeepersController()).getStats()
      : goalkeepersBloc.add(StatsGoalkeeperGet([statisticId]));

  Future<Goalkeepers> getGoalkeepers() {
    return const StatsGoalkeeperRepository().getGoalkeepers(
      isSum ? statisticIds : [statisticId],
    );
  }

  void getFaceoffsCard() {
    faceoffsBloc.add(FaceoffGet(isSum ? statisticIds : [statisticId], isSum));
  }

  void getFaceoffsPlayground([List<String>? playerIds]) {
    faceoffsPlaygroundBloc.add(
      FaceoffsPlaygroundGet(
        statisticsIds: isSum ? statisticIds : [statisticId],
        playerIds: playerIds ?? [],
        isMultipleMatches: isSum,
      ),
    );
  }

  void getShifts([String? period]) {
    shiftsBloc.add(StatsShiftsGet(statisticId: statisticId, period: period));
  }

  Future<bool> removeFilters() async {
    Get.delete<StatsShotsFiltersController>(force: true);
    Get.delete<StatsGoalkeepersFiltersController>(force: true);
    Get.delete<StatsFaceoffsFiltersController>(force: true);
    Get.delete<StatsPlayersFiltersController>(force: true);
    return true;
  }
}
