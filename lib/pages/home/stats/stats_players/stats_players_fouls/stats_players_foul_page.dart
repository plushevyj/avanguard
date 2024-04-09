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
import 'bloc/stats_players_foul_bloc.dart';
import 'stats_players_foul_controller.dart';

class StatsPlayersFoulPage extends StatelessWidget {
  const StatsPlayersFoulPage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersFoulController())..getTable();
    return BlocBuilder<StatsPlayersFoulBloc, StatsPlayersFoulState>(
      builder: (context, state) {
        if (state is StatsPlayersFoulInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersFoulGot) {
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
              minWidth: 880,
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
                  onSort: c.sortByFoulDifference,
                  tooltip: 'Разница удалений',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('УдР', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByEarnedFouls,
                  tooltip: 'Заработанные удаления',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('УдЗ', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByEarnedFouls,
                  tooltip: 'Удаления',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('УдП', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByFouls,
                  tooltip: 'Штрафные минуты',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Штр', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Разница заработанных и полученных удалений когда игрок был на льду',
                  onSort: c.sortByPlusMinus,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Уд +/-', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Игрок находился на льду когда было заработано удаление',
                  onSort: c.sortByPlus,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Уд +', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Игрок находился на льду когда было получено удаление',
                  onSort: c.sortByMinus,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Уд -', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndPercentCell(
                          e.foulDifference,
                          oneIsMax: true,
                        )),
                        DataCell(ValueAndTopCell(e.earnedFouls)),
                        DataCell(ValueAndTopCell(e.fouls)),
                        DataCell(ValueAndTopCell(e.foulTime)),
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
                      ],))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersFoulError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
