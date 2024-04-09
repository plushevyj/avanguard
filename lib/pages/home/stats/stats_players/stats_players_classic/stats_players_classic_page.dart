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
import '../widgets/value_and_percent_cell.dart';
import '../widgets/value_and_top_cell.dart';
import 'bloc/stats_players_classic_bloc.dart';
import 'stats_players_classic_controller.dart';

class StatsPlayersClassicPage extends StatelessWidget {
  const StatsPlayersClassicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StatsPlayersClassicController()).getTable();
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
    final c = Get.put(StatsPlayersClassicController());
    return BlocBuilder<StatsPlayersClassicBloc, StatsPlayersClassicState>(
      builder: (context, state) {
        if (state is StatsPlayersClassicInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersClassicGot) {
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
              minWidth: 850,
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
                  onSort: c.sortByScore,
                  tooltip: 'Очки',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('O', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByGoals,
                  tooltip: 'Голы',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Г', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByAssists,
                  tooltip: 'Ассисты',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('А', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                // if (c.rows.map((e) => e.plusMinus).any((e) => e != null)) ...[
                DataColumn2(
                  onSort: c.sortByPlusMinus,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+/-', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByPlus,
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByMinus,
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('-', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                // ],
                DataColumn2(
                  onSort: c.sortByBlockedShots,
                  tooltip: 'Блокшоты',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Блб', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
              ],
              rows: c.rows
                  .map((e) => DataRow(cells: [
                        DataCell(StudentCell(
                          e.student,
                          isExpanded: c.isExpanded.value,
                        )),
                        if (StatsController.isSum)
                          DataCell(Text(e.student.gamesCount.toString())),
                        DataCell(ValueAndTopCell(e.score)),
                        DataCell(ValueAndTopCell(e.goals)),
                        DataCell(ValueAndTopCell(e.assists)),
                        // if (c.rows.map((e) => e.plusMinus).any((e) => e != null)) ...[
                        DataCell(ValueAndPercentCell(e.plusMinus)),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.plus?.toString() ?? '-'),
                            const SizedBox(width: 20),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.minus?.toString() ?? '-'),
                            const SizedBox(width: 20),
                          ],
                        )),
                        // ],
                        DataCell(ValueAndTopCell(e.blockedShots)),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersClassicError) {
          return const Text('Нет статистики по выбранному табу');
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
