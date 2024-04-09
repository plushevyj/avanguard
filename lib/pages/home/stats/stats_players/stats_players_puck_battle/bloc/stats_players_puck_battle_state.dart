part of 'stats_players_puck_battle_bloc.dart';

abstract class StatsPlayersPuckBattleState extends Equatable {
  const StatsPlayersPuckBattleState();
}

class StatsPlayersPuckBattleInitial extends StatsPlayersPuckBattleState {
  @override
  List<Object> get props => [];
}

class StatsPlayersPuckBattleGot extends StatsPlayersPuckBattleState {
  final List<PuckBattleRow> rows;

  const StatsPlayersPuckBattleGot(this.rows);

  @override
  List<Object> get props => [rows];
}

class StatsPlayersPuckBattleError extends StatsPlayersPuckBattleState {
  final String error;

  const StatsPlayersPuckBattleError(this.error);

  @override
  List<Object> get props => [error];
}
