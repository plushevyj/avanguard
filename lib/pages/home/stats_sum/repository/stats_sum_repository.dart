import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/http/request_handler.dart';
import '../../../../core/utils/convert_to.dart';
import '../../../../core/utils/sort.dart';
import '../../../../customization/constants.dart';
import '../stats_sum_choose/model/tournament.dart';
import '../stats_sum_rival/stats_sum_full_players_stats/model/statistics_classic_tab_item_dto.dart';
import '../stats_sum_rival/widgets/rival_select/model/statistics_get_ep_enemy_list_item_dto.dart';
import '../stats_sum_shots/widgets/stats_sum_shots_playground_filter/dto/game_player_dto.dart';
import '../stats_sum_teams/model/get_matches_info_response_dto.dart';
import '../stats_tournament/widgets/games_card/model/tournament_next_games.dart';
import '../stats_tournament/widgets/games_card/model/tournament_past_games.dart';
import '../stats_tournament/widgets/player_stats_card_view/model/player_stats.dart';
import '../stats_tournament/widgets/table_card/model/statistics_mkc_chess_response.dart';
import '../stats_tournament/widgets/table_card/model/statistics_mkc_table_item_dto.dart';
import '../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import '../widgets/match_picker/model/statistics_mkc_tournament_item_dto.dart';

class StatsSumRepository {
  const StatsSumRepository();

  // static const _tournamentId = 1;

  static final _http = GetIt.I.get<Dio>();

  static late Tournament tournament;
  static late int teamMKCId;
  static late bool isFinal;
  static late String season;

  static void setQueryParameters(Tournament tournamentArg) {
    tournament = tournamentArg;
    isFinal = tournament.isFinal;
    teamMKCId = tournament.teamMKCId;
    season = tournament.season;
  }

  static void setTeamMKCId(int teamId) => teamMKCId = teamId;

  Future getTable({required String type}) async {
    const path = '/api/v1/statistics/mkc/tablepage/table';
    final q = {
      'season': season,
      'isFinal': isFinal,
      'type': type,
      'teamMKCId': teamMKCId,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return type == 'tournament'
        ? ConvertTo.list<StatisticsMKCTableItemDto>(
            res.data['items'],
            StatisticsMKCTableItemDto.fromJson,
          )
        : ConvertTo.item<StatisticsMKCChessResponse>(
            res.data,
            StatisticsMKCChessResponse.fromJson,
          );
  }

  Future<dynamic> getPlayersStats({
    required String playersBlockType,
  }) async {
    const path = '/api/v1/statistics/mkc/tablepage/players';
    final q = {
      'season': season,
      'isFinal': isFinal,
      'teamMKCId': teamMKCId,
      'playersBlockType': playersBlockType,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return playersBlockType == kGoaltender
        ? ConvertTo.item<StatisticsGetMKCTablePagePlayersBlockGoaltendersDto>(
            res.data,
            StatisticsGetMKCTablePagePlayersBlockGoaltendersDto.fromJson,
          )
        : ConvertTo.item<StatisticsMKCTalbePagePlayersBlockWDItemDto>(
            res.data,
            StatisticsMKCTalbePagePlayersBlockWDItemDto.fromJson,
          );
  }

  Future<MKCTablePagePastGamesResponseDto> getTournamentPastGames() async {
    const path = '/api/v1/statistics/mkc/tablepage/past-games';
    final q = {
      'teamId': teamMKCId,
      'page': 1,
      'limit': 9000,
      'isFinal': isFinal,
      'season': season,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<MKCTablePagePastGamesResponseDto>(
      res.data,
      MKCTablePagePastGamesResponseDto.fromJson,
    );
  }

  Future<MKCTablePageNextGameResponseDto> getTournamentNextGames() async {
    const path = '/api/v1/statistics/mkc/tablepage/next-games';
    final q = {
      'teamId': teamMKCId,
      'page': 1,
      'limit': 9000,
      'isFinal': isFinal,
      'season': season,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<MKCTablePageNextGameResponseDto>(
      res.data,
      MKCTablePageNextGameResponseDto.fromJson,
    );
  }

  //todo: спросить нормально ли 'teamId': teamMKCId ?
  Future<List<StatisticsGetEPEnemyListItemDto>> getTournamentTeamList() async {
    const path = '/api/v1/statistics/mkc/enemyprepare/teamlist';
    final q = {'teamId': teamMKCId, 'isFinal': isFinal, 'season': season};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<StatisticsGetEPEnemyListItemDto>(
      res.data,
      StatisticsGetEPEnemyListItemDto.fromJson,
    );
  }

  Future<List<StatisticsClassicTabItemDto>> getFullPlayersStats() async {
    const path = '/api/v1/statistics/mkc/enemyprepare/players-stats';
    final q = {'teamId': teamMKCId, 'isFinal': isFinal, 'season': season};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<StatisticsClassicTabItemDto>(
      res.data,
      StatisticsClassicTabItemDto.fromJson,
    );
  }


  //todo: разобраться, почему везде teamMKCId = 1
  Future<List<StatisticsMKCTournamentItemDto>>
      getTournamentsForMatches() async {
    const path = '/api/v1/statistics/mkc/tournaments';
    final q = {'teamMkcId': teamMKCId};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<StatisticsMKCTournamentItemDto>(
      res.data,
      StatisticsMKCTournamentItemDto.fromJson,
    );
  }

  //mark
  Future<List<StatisticsMKCMatchesResponseDto>> chooseMatches({
    // required int teamId,
    required int tournamentId,
    List<String> type = const [],
    List<String> gameType = const [],
    List<String> puckDiff = const [],
    bool onlyAgainstTopThree = false,
  }) async {
    // await getTournamentsForMatches();
    const path = '/api/v1/statistics/mkc/matches';
    final q = {
      'tournamentId': tournamentId,
      'teamId': teamMKCId,
      'type[]': type,
      'gameType[]': gameType,
      'puckDiff[]': puckDiff,
      'isFinal': isFinal,
      'onlyAgainstTopThree': onlyAgainstTopThree,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<StatisticsMKCMatchesResponseDto>(
      res.data,
      StatisticsMKCMatchesResponseDto.fromJson,
    );
  }

  Future<GetMatchesInfoResponseDto> getMatches({
    required String period,
    required List<String> statisticsId,
  }) async {
    const path = '/api/v1/statistics/get/matches';
    final q = {'half': period, 'statisticsId[]': statisticsId};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<GetMatchesInfoResponseDto>(
      res.data,
      GetMatchesInfoResponseDto.fromJson,
    );
  }

  Future<List<GamePlayerDto>> getPlayersForFilter({
    required List<String> statisticsId,
  }) async {
    if (statisticsId.isEmpty) return [];
    const path = '/api/v1/statistics/games/players';
    final q = {'statisticsIds[]': statisticsId};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    final result = await Isolate.run(
      () => Sort.players(res.data, GamePlayerDto.fromJson),
      debugName: 'Sort.players',
    );
    // return result is List<GamePlayerDto> ? result : [];
    return result.map((e) => e as GamePlayerDto).toList();
  }
}
// (res.data as List)
//   .map<GamePlayerDto>((e) => GamePlayerDto.fromJson(e))
//   .toList(growable: false)
// ..sort((a, b) {
//   int roleComparison = (b.hockeyRole ?? '-').compareTo(a.hockeyRole ?? '-');
//   if (roleComparison != 0) {
//     return roleComparison; // Сначала сортируем по ролям
//   }
//   return b.shotsCount.compareTo(a.shotsCount); // Потом внутри каждой роли сортируем по количеству бросков
// });
