import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/estimate_game/model/game_estimate.dart';
import '../../../../module/estimate_game/repository/game_estimate_repository.dart';
import '../../../../module/game/controller/game_controller.dart';
import '../../../../module/game/model/past_game.dart';
import '../../../../module/skill/controller/skill_controller.dart';
import '../../../../module/skill/model/skill_estimate.dart';
import 'model/player_diary.dart';
import 'model/survey_options.dart';
import 'repository/player_diary_repository.dart';
import 'widgets/diary_send_widget.dart';
import 'widgets/game_survey.dart';
import 'widgets/group_survey.dart';
import 'widgets/individual_survey.dart';
import 'widgets/morning_survey.dart';

class PlayerDiaryController extends GetxController {
  static const repository = PlayerDiaryRepository();

  final _skillController = Get.put(SkillController());

  String? _id;
  var isDayOff = false.obs;
  var isMorningTrainingToday = true.obs;
  var isIndividualTrainingToday = true.obs;
  var isGroupTrainingToday = true.obs;
  var isGameToday = Rxn<bool>();
  var switches = <RxBool>[];
  var isLoaded = false.obs;

  int? attackActions, defenseActions;

  void back() {
    errorMessage.value = null;
    Get.back();
  }

  void showSurveyDialog(SurveyType survey) {
    const surveys = {
      SurveyType.morning: MorningSurvey(),
      SurveyType.trainingIndividual: IndividualSurvey(),
      SurveyType.trainingGroup: GroupSurvey(),
      SurveyType.game: GameSurvey(),
    };

    // each time player access survey, text controller created
    // based on skills to train amount
    prepareControllers();

    showDialog(
      context: Get.context!,
      builder: (BuildContext context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: Indents.internal),
        child: PopScope(
          onPopInvoked: (_) => errorMessage.value = null,
          child: surveys[survey]!,
        ),
      ),
    );
  }

  var estimates = Rxn<List<SkillEstimate>>();
  List<Skill?> skills = [];
  var diary = Rxn<PlayerDiary>();
  List<Parameter>? parameters;

  // id - 0KfrXy8m84Gk

  @override
  Future<void> onInit() async {
    diary.value = await repository.getDiaryOrNull();
    diary.value ??= PlayerDiary(date: DateTime.now());
    _id ??= diary.value?.id;
    isLoaded.value = true;
    _initSwitches();
    _setSwitches();
    _initCompletedSwitches();
    _getSkillEstimateList();
    _getGameEstimateParameters();
    // setNotifications();
    super.onInit();
  }

  final game = Rxn<PastGame>();

  // because games is stream, it can either be with data or without
  // so if it empty use stream api to get first event
  // else start immediately
  Future<void> _getGameEstimateParameters() async {
    final games = Get.put(GameController()).past6Games;
    if (games.isEmpty) {
      games.stream.first.then((list) {
        // first game in list is most recent
        game.value = list.firstOrNull;
        if (game.value == null) {
          isGameToday.value = false;
          return;
        }
        _gameEstimateRepository.getEstimateGame(game.value!.id).then((value) {
          parameters = value.parameters;
          isGameToday.value = !(diary.value!.game?.isDayOff ?? false);
        });
      });
    } else {
      _gameEstimateRepository.getEstimateGame(games.first.id).then((value) {
        parameters = value.parameters;
        isGameToday.value = !(diary.value!.game?.isDayOff ?? false);
      });
    }
  }

  void _initSwitches() => switches.addAll([
        isDayOff,
        isIndividualTrainingToday,
        isGroupTrainingToday,
      ]);

  void _setSwitches() {
    if (diary.value != null) {
      isDayOff.value = diary.value!.morning?.isDayOff ?? false;
      isIndividualTrainingToday.value =
          !(diary.value!.trainingIndividual?.isDayOff ?? false);
      isGroupTrainingToday.value =
          !(diary.value!.trainingGroup?.isDayOff ?? false);
    }
  }

  bool _isMorningCompleted = false,
      _isIndividualCompleted = false,
      _isGroupCompleted = false,
      _isGameCompleted = false;

  final _isCompletedSwitches = <bool>[];

  void _initCompletedSwitches() {
    _isCompletedSwitches.addAll([
      _isMorningCompleted,
      _isIndividualCompleted,
      _isGroupCompleted,
      _isGameCompleted,
    ]);
  }

  bool get isMorningCompleted =>
      _isMorningCompleted = diary.value?.morning != null;

  bool get isIndividualCompleted =>
      _isIndividualCompleted = diary.value?.trainingIndividual != null;

  bool get isGroupCompleted =>
      _isGroupCompleted = diary.value?.trainingGroup != null;

  bool get isGameCompleted => _isGameCompleted = diary.value?.game != null;

  bool get isDiaryComplete =>
      isMorningCompleted &&
      isIndividualCompleted &&
      isGroupCompleted &&
      isGameCompleted;

  Future<void> _getSkillEstimateList() async {
    await _skillController.skillsInitialized();
    estimates.value = _skillController.skillEstimates.value;
    skills = _skillController.skills;
  }

  Future<void> sendDiary() async {
    isLoaded.value = false;
    diary.value = await repository.sendDiary(
      diary.value!.copyWith(date: DateTime.now()),
    );
    _setSwitches();
    isLoaded.value = true;
    // setNotifications();
  }

  static const _gameEstimateRepository = GameEstimateRepository();
  final _gameEstimates = Rxn<GameEstimate>();

  Future<void> sendGameEstimate(List<Parameter> params) async {
    if (game.value == null) return;
    _gameEstimates.value = await _gameEstimateRepository.sendGameEstimate(
      gameId: game.value!.id,
      parameters: params,
    );
    if (_gameEstimates.value is GameEstimate) {
      showDialog(
        context: Get.context!,
        builder: (BuildContext _) => const Dialog(child: DiarySendWidget()),
      );
    }
  }

  Future<void> noTraining(SurveyType surveyType) async {
    switches[surveyType.index].toggle();
    // repository.restoreDiaryState(_id);
    await repository.setDayOff(surveyType, _id);
    // setNotifications();
  }

  static const titles = [
    'Анкета. Утро',
    'Анкета. Индивидуальная тренировка',
    'Анкета. Игра',
    'Анкета. Групповая тренировка',
  ];

  static const _errMsg = 'Не все поля заполнены';

  String? errorOrNull(
    List<int?> list, {
    List<Parameter>? params,
    List<TextEditingController>? playerEstimates,
  }) {
    if (list.any((e) => e == null)) return _errMsg;
    if (params?.any((e) => e.value == null) ?? false) return _errMsg;
    if (playerEstimates?.any((e) => e.text.isEmpty) ?? false) return _errMsg;

    return null;
  }

  var errorMessage = Rxn<String>();

  final trainingSkillEstimate = <Skill?, TextEditingController>{};

  void prepareControllers() {
    for (var i = 0; i < skills.length; ++i) {
      trainingSkillEstimate[skills[i]] = TextEditingController();
    }
  }

  // void setNotifications() {
    // NotificationController.setEveryday();
    // nc.setMorningNotification(isMorningCompleted || isDayOff.isTrue);
    // final isDiaryComplete = (isGameCompleted || isGameToday.isFalse) &&
    //     (isIndividualCompleted || isIndividualTrainingToday.isFalse) &&
    //     (isGroupCompleted || isGroupTrainingToday.isFalse);
    // nc.setEveningNotification(isDiaryComplete);
  // }
}
