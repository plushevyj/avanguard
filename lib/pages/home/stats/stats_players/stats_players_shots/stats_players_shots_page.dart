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
import 'bloc/stats_players_shots_bloc.dart';
import 'stats_players_shots_controller.dart';

class StatsPlayersShotsPage extends StatelessWidget {
  const StatsPlayersShotsPage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersShotsController())..getTable();
    return BlocBuilder<StatsPlayersShotsBloc, StatsPlayersShotsState>(
      builder: (context, state) {
        if (state is StatsPlayersShotsInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersShotsGot) {
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
              minWidth: 777,
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
                  onSort: c.sortRealizationPercent,
                  tooltip: 'Броски',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Б', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByShots,
                  tooltip: 'Броски в створ',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('БвС', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Реализация бросков %',
                  onSort: c.sortByShotsOnGoal,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('РБ%', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Точность бросков %',
                  onSort: c.sortShotsAccuracy,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ТБ%', style: Get.textTheme.bodyMedium),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Неудачные попытки броска',
                  onSort: c.sortUnsuccessfulShotAttempts,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('НПБ', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndTopCell(e.goals)),
                        DataCell(ValueAndTopCell(e.shots)),
                        DataCell(ValueAndTopCell(e.shotsOnGoal)),
                        DataCell(ValueAndTopCell(e.shotsRealization)),
                        DataCell(ValueAndTopCell(e.shotsAccuracy)),
                        DataCell(ValueAndTopCell(e.unsuccessfulShotAttempts)),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersShotsError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
