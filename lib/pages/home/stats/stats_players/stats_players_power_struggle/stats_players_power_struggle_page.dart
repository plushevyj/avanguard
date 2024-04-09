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
import 'bloc/stats_players_power_struggle_bloc.dart';
import 'stats_players_power_struggle_controller.dart';

class StatsPlayersPowerStrugglePage extends StatelessWidget {
  const StatsPlayersPowerStrugglePage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersPowerStruggleController())..getTable();
    return BlocBuilder<StatsPlayersPowerStruggleBloc,
        StatsPlayersPowerStruggleState>(
      builder: (context, state) {
        if (state is StatsPlayersPowerStruggleInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersPowerStruggleGot) {
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
              minWidth: 560,
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
                  onSort: c.sortByHits,
                  tooltip: 'Хиты',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Хит', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByWinBattlesPercent,
                  tooltip: 'Выигранные единоборства %',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ед+%', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByWinBattles,
                  tooltip: 'Выигранные единоборства',
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ед+', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Всего единоборств',
                  onSort: c.sortByAllBattles,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ед', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndTopCell(e.hits)),
                        DataCell(
                          Text(e.winBattlesPercent?.value.toString() ?? '-'),
                        ),
                        DataCell(Text(e.winBattles.toString())),
                        DataCell(Text(e.allBattles.toString())),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersPowerStruggleError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
