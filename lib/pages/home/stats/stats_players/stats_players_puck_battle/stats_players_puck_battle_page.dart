import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../stats_controller.dart';
import '../widgets/legend_row.dart';
import '../widgets/role_filter_widget.dart';
import '../widgets/student_cell.dart';
import '../widgets/value_and_top_cell.dart';
import 'bloc/stats_players_puck_battle_bloc.dart';
import 'stats_players_puck_battle_controller.dart';

class StatsPlayersPuckBattlePage extends StatelessWidget {
  const StatsPlayersPuckBattlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, isInnerBoxScrolled) => [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                RoleFilterWidget(),
                LegendRow(),
                Gap(19),
              ],
            ),
          ),
        ],
        body: const _StatsTable(),
      ),
    );
  }
}

class _StatsTable extends StatelessWidget {
  const _StatsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsPlayersPuckBattleController())..getTable();
    return BlocBuilder<StatsPlayersPuckBattleBloc, StatsPlayersPuckBattleState>(
      builder: (context, state) {
        if (state is StatsPlayersPuckBattleInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersPuckBattleGot) {
          c.rows = state.rows;
          return Obx(
            () => DataTable2(
              sortColumnIndex: c.sortColumnIndex,
              sortAscending: c.isAscend.value,
              headingRowHeight: 40,
              dataRowHeight: 40,
              columnSpacing: 20,
              fixedLeftColumns: 1,
              border: TableBorder.all(color: StdColors.border24),
              horizontalMargin: 12,
              minWidth: 1000,
              columns: [
                DataColumn2(
                  fixedWidth: c.isExpanded.value ? 134 : 71,
                  onSort: c.sortPlayersByNumbers,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        c.isExpanded.value ? 'Игрок' : '... ',
                        style: Get.textTheme.bodySmall,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: StdColors.primary,
                          shape: BoxShape.circle,
                        ),
                        height: 18,
                        margin: EdgeInsets.zero,
                        width: 18,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            padding: c.isExpanded.isTrue
                                ? const EdgeInsets.only(left: 4)
                                : EdgeInsets.zero,
                            onPressed: c.isExpanded.toggle,
                            icon: Icon(
                              c.isExpanded.isTrue
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_forward_ios,
                              size: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (StatsController.isSum)
                  DataColumn2(
                    onSort: c.sortByGames,
                    tooltip: 'Игры',
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('И', style: Get.textTheme.bodyMedium),
                        const SizedBox(width: 6),
                      ],
                    ),
                  ),
                DataColumn2(
                  onSort: c.sortByTakeaways,
                  tooltip: 'Отборы',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Отб', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByTakeawaysOZ,
                  tooltip: 'Отборы в зоне атаки',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Отб ЗА', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByTakeawaysDZ,
                  tooltip: 'Отборы в зоне защиты',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Отб ЗЩ', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Потери',
                  onSort: c.sortByGiveaways,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Птр', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Потери в зоне атаки',
                  onSort: c.sortByGiveawaysOZ,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Птр ЗА', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Потери в зоне защиты',
                  onSort: c.sortByGiveawaysDZ,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Птр ЗЩ', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Подборы в зоне атаки',
                  onSort: c.sortByTakesOZ,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Пдб ЗА', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Подборы в зоне защиты',
                  onSort: c.sortByTakesDZ,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Пдб ЗЩ', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
              ],
              rows: state.rows
                  .map((e) => DataRow(cells: [
                        DataCell(StudentCell(
                          e.student,
                          isExpanded: c.isExpanded.value,
                        )),
                        if (StatsController.isSum)
                          DataCell(Text(e.student.gamesCount.toString())),
                        DataCell(ValueAndTopCell(e.takeaways)),
                        DataCell(ValueAndTopCell(e.takeawaysOZ)),
                        DataCell(ValueAndTopCell(e.takeawaysDZ)),
                        DataCell(ValueAndTopCell(e.giveaways)),
                        DataCell(ValueAndTopCell(e.giveawaysOZ)),
                        DataCell(ValueAndTopCell(e.giveawaysDZ)),
                        DataCell(ValueAndTopCell(e.takesOZ)),
                        DataCell(ValueAndTopCell(e.takesDZ)),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersPuckBattleError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
