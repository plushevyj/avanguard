import '../model/next_game.dart';
import '../model/past_games.dart';

abstract class GameRepository {
  Future<PastGames> getPastGames(int? page);

  Future<List<NextGame>?> getNextGames();
}
