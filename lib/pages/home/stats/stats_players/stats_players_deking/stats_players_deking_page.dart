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
import 'bloc/stats_players_deking_bloc.dart';
import 'stats_players_deking_controller.dart';

class StatsPlayersDekingPage extends StatelessWidget {
  const StatsPlayersDekingPage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersDekingController())..getTable();
    return BlocBuilder<StatsPlayersDekingBloc, StatsPlayersDekingState>(
      builder: (context, state) {
        if (state is StatsPlayersDekingInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersDekingGot) {
          c.rows = state.rows;
          return Obx(
            () => DataTable2(
              sortAscending: c.isAscend.value,
              sortColumnIndex: c.sortColumnIndex,
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
                  onSort: c.sortByDekings,
                  tooltip: 'Успешные обводки игроком',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об+', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByPlayerDekingAttempts,
                  tooltip: 'Попытки обводок игроком',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об+Σ', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortBySuccessfulDekings,
                  tooltip: '% успешных обводок',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об+%', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByUnsuccessfulDekings,
                  tooltip: 'Неуспешные обводки игрока',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об-', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByDekingOnPlayerAttempts,
                  tooltip: 'Попытки обводок игрока',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об-Σ', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortBySavedDekings,
                  tooltip: 'Обводят в % случаев',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Об-%', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndTopCell(e.dekings)),
                        DataCell(ValueAndTopCell(e.playerDekingAttempts)),
                        DataCell(ValueAndTopCell(e.successfulDekings)),
                        DataCell(ValueAndTopCell(e.unsuccessfulDekings)),
                        DataCell(Text(e.dekingOnPlayerAttempts.toString())),
                        DataCell(ValueAndTopCell(e.savedDekings)),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersDekingError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
