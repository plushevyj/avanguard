

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/utils/convert_to.dart';
import '../../../core/http/request_handler.dart';
import '../model/next_game.dart';
import '../model/past_games.dart';
import 'game_repository.dart';

class GameRepositoryMob implements GameRepository {
  const GameRepositoryMob();

  static final _http = GetIt.I.get<Dio>();

  static const int limit = 10;
  static String? gameType;
  static String? resultType;
  static var from = DateTime(2010).millisecondsSinceEpoch;
  static var to = DateTime.now().millisecondsSinceEpoch;

  @override
  Future<PastGames> getPastGames([int? page]) async {
    final q = {
      'page': page ?? 1,
      'limit': limit,
      'gameType': gameType ?? [],
      'from': from,
      'to': to,
      'resultType': resultType ?? [],
    };
    const path = '/api/v1/dashboard/student/mob/past-games';
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<PastGames>(res.data, PastGames.fromJson);
  }

  @override
  Future<List<NextGame>> getNextGames() async {
    const path = '/api/v1/dashboard/student/mob/next-game';
    final response = await handleRequest(() => _http.get(path));
    return ConvertTo.list<NextGame>(response.data, NextGame.fromJson);
  }
}
