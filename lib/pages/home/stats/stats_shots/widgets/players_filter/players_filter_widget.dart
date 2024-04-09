import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../widgets/multi_select/multi_select.dart';
import '../../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../../stats_controller.dart';
import 'bloc/shots_players_filter_bloc.dart';
import 'model/filter_player.dart';

class PlayersFilterWidget extends StatelessWidget {
  final MultiSelectController controller;

  const PlayersFilterWidget(this.controller, {Key? key}) : super(key: key);

  List<String> _getIds(List<FilterPlayer> players, List indexes) {
    return indexes.map((index) => players[index].value).toList();
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<StatsController>()..getShotsPlayersFilter();
    return BlocBuilder<ShotsPlayersFilterBloc, ShotsPlayersFilterState>(
      builder: (context, state) {
        if (state is ShotsPlayersFilterInitial) {
          return const CircularProgressIndicator.adaptive();
        } else if (state is ShotsPlayersFilterGot) {
          final players = state.filter.players;
          return MultiSelect(
            players,
            controller: controller,
            labelText: 'Игроки',
            onSelect: (indexes) => c.getPlayground(_getIds(players, indexes)),
            isCategorized: true,
          );
        } else if (state is ShotsPlayersFilterError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
