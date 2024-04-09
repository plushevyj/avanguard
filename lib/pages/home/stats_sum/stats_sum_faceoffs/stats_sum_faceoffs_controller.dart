import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/constants/constants.dart';
import '../../stats/stats_controller.dart';
import '../controller/stats_sum_controller.dart';
import '../controller/stats_sum_tab.dart';
import '../widgets/match_picker/match_picker_controller.dart';

class StatsSumFaceoffsController extends GetxController {
  final c = Get.put(StatsController());

  var tab = StatsSumController.tab;

  @override
  void onInit() {
    _subscribeToMatchPicker();
    super.onInit();
  }

  void getData(_) {
    if (tab.value != StatsSumTab.faceoffs) return;
    c..getFaceoffsCard()..getFaceoffsPlayground();
  }

  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches.stream;

  void _subscribeToMatchPicker() {
    _chosenMatches.debounceTime(kDebounceTime).listen(getData);
  }
}
