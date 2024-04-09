import 'package:collection/collection.dart';
import 'package:get/get.dart';

import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../anthropometry_controller.dart';
import '../repository/anthropometry_repository.dart';
import 'entity/seasons.dart';

class AnthropometryFiltersController extends GetxController {
  final _startDate = DateTime(2022, 6).millisecondsSinceEpoch;
  final _endDate = DateTime.now().millisecondsSinceEpoch;
  static const _yearInMilliseconds = 31556952000;

  final seasonsFilterController = MultiSelectController();

  // Used in multiselect, have labels and actual data (check Seasons class).
  var seasonsData = <int>[];

  void collapse() => seasonsFilterController.collapse();

  void setSeasons(List indexes) {
    seasonsData = indexes.map((i) => Seasons.data[i]).toList();
  }

  void applyFilters() {
    AnthropometryRepository.startDate = seasonsData.minOrNull ?? _startDate;
    AnthropometryRepository.endDate =
        seasonsData.isEmpty ? _endDate : seasonsData.max + _yearInMilliseconds;
    getAnthropometry();
  }

  void reset() {
    AnthropometryRepository.startDate = _startDate;
    AnthropometryRepository.endDate = _endDate;
    collapse();
    seasonsFilterController.clear();
    seasonsData.clear();
  }

  void getAnthropometry() => Get.find<AnthropometryController>().getData();
}
