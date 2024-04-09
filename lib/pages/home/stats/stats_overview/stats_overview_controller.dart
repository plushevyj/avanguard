import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../period.dart';
import '../stats_controller.dart';
import 'bloc/stats_overview_bloc.dart';

class StatsOverviewController extends GetxController {
  late final StatsOverviewBloc bloc;
  var filter = Period.all.obs;
  late bool weAtHome;

  @override
  void onInit() {
    bloc = BlocProvider.of<StatsOverviewBloc>(Get.context!);
    super.onInit();
  }

  void filterTap(String period) {
    filter.value = period;
    Get.find<StatsController>().getStats(period);
  }
}

