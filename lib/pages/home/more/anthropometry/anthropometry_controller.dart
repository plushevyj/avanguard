import 'package:collection/collection.dart';
import 'package:get/get.dart';

import 'filters/anthropometry_filters_controller.dart';
import 'model/anthropometry.dart';
import 'repository/anthropometry_repository.dart';

class AnthropometryController extends GetxController {
  final player = Rxn<Player>();
  final params = RxList<Param>();
  final paramsByYear = <int, List<Param>>{}.obs;

  Future<void> getData() async {
    player.value = await const AnthropometryRepository().getData();
    params.value = player.value!.params;
    paramsByYear.assignAll(groupBy(params, (param) => param.date.year).obs);
  }

  Future<bool> removeFilters() async {
    Get.delete<AnthropometryFiltersController>(force: true);
    return true;
  }
}
