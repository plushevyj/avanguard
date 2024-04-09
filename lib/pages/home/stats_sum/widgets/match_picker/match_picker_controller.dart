import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../repository/stats_sum_repository.dart';
import 'model/statistics_mkc_matches_response_dto.dart';
import 'model/statistics_mkc_tournament_item_dto.dart';
import 'model/stats_sum_type.dart';

class MatchPickerController extends GetxController {
  static const repository = StatsSumRepository();

  static const duration = Duration(milliseconds: 500);

  var tournaments = <StatisticsMKCTournamentItemDto>[];
  late StatisticsMKCTournamentItemDto currentTournament;
  final tournamentView = ''.obs;

  final matches = <StatisticsMKCMatchesResponseDto>[].obs;
  final chosenMatches = <StatisticsMKCMatchesResponseDto>[].obs;
  late var previousMatches = <StatisticsMKCMatchesResponseDto>[];
  final matchesCount = 0.obs;

  final typeController = MultiSelectController();
  final gameTypeController = MultiSelectController();
  final puckDiffController = MultiSelectController();

  var typeData = <String>[];
  var gameTypeData = <String>[];
  var puckDiffData = <String>[];
  var statisticIds = <String>[];

  final isLoaded = false.obs;
  final isMatchesLoaded = false.obs;
  final isNoTournaments = false.obs;
  final onlyAgainstTop3 = false.obs;

  var isFirst = true;

  Future<void> init() async {
    if (!isFirst) return;
    await _getTournamentsForMatches();
    _subscribeToAllMatches();
    _subscribeTop3();
    _subscribeToChosenMatches();
    await getMatches();
    chooseMatches();
    isFirst = false;
  }

  void _subscribeToChosenMatches() => chosenMatches.listen(_updateIds);

  void _updateIds(List<StatisticsMKCMatchesResponseDto> matches) {
    statisticIds = matches.ids;
  }

  void _subscribeTop3() => onlyAgainstTop3.listen((_) => getMatches());

  Future<void> _getTournamentsForMatches() async {
    isLoaded.value = false;
    tournaments = await repository.getTournamentsForMatches();
    if (tournaments.isEmpty) {
      isNoTournaments.value = true;
      return;
    }
    setInitTournament();
    await getMatches();

    isLoaded.value = true;
  }

  void setInitTournament() {
    currentTournament = tournaments.first;
    tournamentView.value = currentTournament.view;
  }

  Future<void> setCurrentTournament(String view) async {
    currentTournament = tournaments.firstWhere((e) => e.view == view);
    tournamentView.value = currentTournament.view;
    await getMatches();
  }

  Future<void> setType(List indexes) async {
    typeData = indexes.map((i) => StatsSumType.data[i]).toList();
    await getMatches();
  }

  Future<void> setGameType(List indexes) async {
    gameTypeData = indexes.map((i) => StatsSumGameType.data[i]).toList();
    await getMatches();
  }

  Future<void> setPuckDiff(List indexes) async {
    puckDiffData = indexes.map((i) => StatsSumPuckDiff.data[i]).toList();
    await getMatches();
  }

  final isShowFilters = true.obs;
  final rotation = .0.obs;

  void toggleFilters() {
    isShowFilters.toggle();
    rotation.value = isShowFilters.isTrue ? 0 : .5;
  }

  // Used as stream, for method call on changes.
  void chooseMatches() {
    chosenMatches.value = matches.where((e) => e.isActive).toList();
    saveMatches();
  }


  //todo: set teamId
  Future<void> getMatches() async {
    isMatchesLoaded.value = false;
    matches.value = await repository.chooseMatches(
      // teamId: currentTournament.,
      tournamentId: currentTournament.tournamentId,
      type: typeData,
      gameType: gameTypeData,
      puckDiff: puckDiffData,
      onlyAgainstTopThree: onlyAgainstTop3.value,
    );

    // set all
    if (matches.isNotEmpty) {
      matches.forEach((match) => match.isActive = true);
      matches.refresh();
    }

    saveMatches();
    isMatchesLoaded.value = true;
  }

  void saveMatches() {
    previousMatches = matches.map((m) => m.copyWith()).toList();
  }

  var isAll = false.obs;

  void chooseAll() {
    isAll.toggle();
    matches.value =
        matches.map((e) => e.copyWith(isActive: isAll.value)).toList();
  }

  _subscribeToAllMatches() =>
      matches.stream.debounceTime(kDebounceTime).listen((list) {
        updateLength(list);
        isAllMatchesChosen(list);
      });

  void updateLength(List<StatisticsMKCMatchesResponseDto> list) {
    matchesCount.value = list.where((match) => match.isActive).length;
  }

  void isAllMatchesChosen(List<StatisticsMKCMatchesResponseDto> matches) {
    isAll.value = matches.every((match) => match.isActive);
  }

  void toggleMatchActive(StatisticsMKCMatchesResponseDto match) {
    match.isActive = !match.isActive;
    matches.refresh();
    updateLength(matches.toList());
  }

  void cancel() {
    matches.value = previousMatches.map((m) => m.copyWith()).toList();
  }
}
