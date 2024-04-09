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
import 'bloc/stats_players_passes_bloc.dart';
import 'stats_players_passes_controller.dart';

class StatsPlayersPassesPage extends StatelessWidget {
  const StatsPlayersPassesPage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersPassesController())..getTable();
    return BlocBuilder<StatsPlayersPassesBloc, StatsPlayersPassesState>(
      builder: (context, state) {
        if (state is StatsPlayersPassesInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersPassesGot) {
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
              minWidth: 900,
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
                  onSort: c.sortByPassesCount,
                  tooltip: 'Всего передач',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByAccuratePasses,
                  tooltip: 'Обострающие передачи',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П+', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),

                DataColumn2(
                  onSort: c.sortByAccuratePassesPercent,
                  tooltip: '% обостряющих передач от всех передач',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П+%', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Приемов обостряющих передач',
                  onSort: c.sortByDangerousPassesTaken,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ПП', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Oбостряющие передачи в опасную зону',
                  onSort: c.sortByAccurateOZPasses,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П+ Оз', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Всего передач в опасную зону',
                  onSort: c.sortByOZPassesCount,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П Оз', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: '% обостряющих передач в опасную зону',
                  onSort: c.sortByAccurateOZPassesPercent,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('П+% Оз', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip: 'Приемов обостряющих передач в опасной зоне',
                  onSort: c.sortByDangerousOZPassesTaken,
                  size: ColumnSize.L,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ПП Оз', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndTopCell(e.passesCount)),
                        DataCell(ValueAndTopCell(e.accuratePasses)),
                        DataCell(ValueAndPercentCell(e.accuratePassesPercent)),
                        DataCell(ValueAndTopCell(e.dangerousPassesTaken)),
                        DataCell(ValueAndTopCell(e.accurateOZPasses)),
                        DataCell(ValueAndTopCell(e.OZPassesCount)),
                        DataCell(ValueAndPercentCell(e.accurateOZPassesPercent)),
                        DataCell(ValueAndTopCell(e.dangerousOZPassesTaken)),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersPassesError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
