import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../../core/http/request_handler.dart';
import '../../../../../../../../core/utils/convert_to.dart';
import '../dto/game_action_type_dto.dart';

class GameActionTypeRepository {
  const GameActionTypeRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<List<GameActionTypeDto>> getSections() async {
    const path = '/api/v1/statistics/games/actions/types';
    const q = {'section': 'action_map'};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<GameActionTypeDto>(
      res.data,
      GameActionTypeDto.fromJson,
    );
  }
}