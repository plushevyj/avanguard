import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../../../../core/constants/constants.dart';
import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../widgets/match_picker/match_picker_controller.dart';
import '../../../../../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import '../../data/dto/game_action_query_parameters.dart';
import '../../domain/usecase/draw_heatmap_usecase.dart';
import '../model/heat_point.dart';
import '../model/heatmap_painter.dart';

class StatsSumShotsPlaygroundController extends GetxController {
  // late HeatmapPainter heatmapPainter;
  late List<HeatPoint> points;

  final uiState = StatsSumShotsPlaygroundUIState.loading.obs;

  final _matches = Get.put(MatchPickerController()).chosenMatches;
  var _chosenIds = <String>[];

  final _drawHeatmap = const DrawHeatmapUsecase();

  @override
  void onInit() {
    _subscribeToMatchPicker();
    super.onInit();
  }

  void init() => _getHeatmap();

  Future<void> _getHeatmap() async {
    uiState.value = StatsSumShotsPlaygroundUIState.loading;
    if (_chosenIds.isEmpty) {
      _showEmpty();
      return;
    }
    final params = GameActionQueryParameters(
      statisticIds: _chosenIds,
      type: 'throws_map',
    );

    final result = await _drawHeatmap(params: params);

    if (result is DataSuccess<List<HeatPoint>>) {
      _showResult(result.data!);
    } else if (result is DataSuccess<String>) {
      _showEmpty();
    } else {
      _showError(result.error!.$1.toString());
    }
    print('updated');
  }

  Future<void> updateHeatmap(GameActionQueryParameters params) async {
    _drawHeatmap.updateParams(params);
    _getHeatmap();
  }

  void _showEmpty() {
    uiState.value = StatsSumShotsPlaygroundUIState.empty;
  }

  // void _showResult(HeatmapPainter painter) {
  void _showResult(List<HeatPoint> points) {
    // heatmapPainter = painter;
    this.points = points;
    print('this.points = ${this.points}');
    uiState.value = StatsSumShotsPlaygroundUIState.success;
  }

  void _showError(String message) {
    uiState.value = StatsSumShotsPlaygroundUIState.error;
  }

  void _subscribeToMatchPicker() {
    _matches.stream.debounceTime(kDebounceTime).listen(_shotsOnChange);
  }

  void _shotsOnChange(List<StatisticsMKCMatchesResponseDto> matches) {
    _chosenIds = matches.ids;
    _getHeatmap();
  }
}

enum StatsSumShotsPlaygroundUIState { loading, success, empty, error }
