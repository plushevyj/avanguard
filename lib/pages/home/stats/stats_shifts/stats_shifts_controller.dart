import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../period.dart';
import '../stats_controller.dart';
import 'bloc/stats_shifts_bloc.dart';
import 'model/k_shifts.dart';

class StatsShiftsController extends GetxController {
  var isExpand = false.obs;
  var headerX = 70.0.obs;
  var iconY = 68.0.obs;

  void updateHeaderX() {
    isExpand.value = !isExpand.value;
    isExpand.value ? headerX.value = 148 : headerX.value = 70;
    isExpand.value ? iconY.value = 41 : iconY.value = 68;
  }

  var dy = .0.obs;

  void updateDy(TapDownDetails details) => dy.value = details.localPosition.dy;

  double getOffset(double y) => y / 2 - dy.value + 20;

  late final StatsShiftsBloc bloc;
  var filter = Period.all.obs;
  var periodOffset = .0.obs;
  var periodMultiplier = 1.obs;

  @override
  void onInit() {
    bloc = BlocProvider.of<StatsShiftsBloc>(Get.context!);
    super.onInit();
  }

  void filterTap(String period) {
    filter.value = period;
    _chooseOffset();
    periodMultiplier.value = period == Period.all ? 1 : 3;
    Get.find<StatsController>().getShifts(period);
  }

  void _chooseOffset() {
    // maybe cycle in props more elegant, but less error pron
    if (filter.value == Period.second) {
      periodOffset.value = periodX;
    } else if (filter.value == Period.third) {
      periodOffset.value = periodX * 2;
    } else if (filter.value == Period.ot) {
      periodOffset.value = periodX * 3;
    } else {
      periodOffset.value = 0;
    }
  }
}
