import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/http/request_handler.dart';
import '../../../../../core/utils/convert_to.dart';
import '../model/players_lines.dart';

class LineRepository {
  const LineRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<PlayersLines> getLines(String gameId) async {
    final path = '/api/players-lines/$gameId';
    final res = await handleRequest(() => _http.get(path));
    return ConvertTo.item<PlayersLines>(res.data, PlayersLines.fromJson);
  }
}
