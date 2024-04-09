import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../widgets/multi_select/multi_select.dart';
import '../../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../../stats_controller.dart';
import 'bloc/faceoffs_players_filter_bloc.dart';
import 'model/faceoffs_player.dart';

class PlayersFilterWidget extends StatelessWidget {
  final MultiSelectController controller;

  const PlayersFilterWidget(this.controller, {Key? key}) : super(key: key);

  List<String> _getIds(List<FaceoffsPlayer> players, List indexes) {
    return indexes.map((index) => players[index].id.toString()).toList();
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<StatsController>()..getFaceoffsPlayersFilter();
    return BlocBuilder<FaceoffsPlayersFilterBloc, FaceoffsPlayersFilterState>(
      builder: (context, state) {
        if (state is FaceoffsPlayersFilterInitial) {
          return const CircularProgressIndicator.adaptive();
        } else if (state is FaceoffsPlayersFilterGot) {
          final players = state.filter.players;
          return MultiSelect(
            players.map((player) {
              return '${player.percent}% ${player.win} - ${player.lost} | '
                  '${player.lastName} ${player.firstName[0]}';
            }).toList(),
            controller: controller,
            labelText: 'Игроки',
            onSelect: (ids) => c.getFaceoffsPlayground(_getIds(players, ids)),
          );
        } else if (state is FaceoffsPlayersFilterError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
