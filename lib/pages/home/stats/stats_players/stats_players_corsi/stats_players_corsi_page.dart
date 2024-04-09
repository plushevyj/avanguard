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
import 'bloc/stats_players_corsi_bloc.dart';
import 'stats_players_corsi_controller.dart';

class StatsPlayersCorsiPage extends StatelessWidget {
  const StatsPlayersCorsiPage({Key? key}) : super(key: key);

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
    final c = Get.put(StatsPlayersCorsiController())..getTable();
    return BlocBuilder<StatsPlayersCorsiBloc, StatsPlayersCorsiState>(
      builder: (context, state) {
        if (state is StatsPlayersCorsiInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsPlayersCorsiGot) {
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
                  onSort: c.sortByCorsiForPercent,
                  tooltip:
                      'Доля всех бросков нашей команды в сторону ворот, когда игрок был на льду (> 50% - хорошо)',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CF%', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByCorsiFor,
                  tooltip:
                      'Броски нашей команды в сторону ворот, когда игрок был на льду',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CF', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  onSort: c.sortByCorsiAgainst,
                  tooltip:
                      'Броски соперника в сторону ворот, когда игрок был на льду',
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CA', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Доля всех бросков нашей команды из опасной зоны в сторону ворот, когда игрок был на льду (> 50% - хорошо)',
                  onSort: c.sortByCorsiForOZPercent,
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CF ОЗ%', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Броски нашей команды из опасной зоны в сторону ворот, когда игрок был на льду',
                  onSort: c.sortByCorsiForOZ,
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CF ОЗ', style: Get.textTheme.bodyMedium),
                    ],
                  ),
                ),
                DataColumn2(
                  tooltip:
                      'Броски соперника из опасной зоны в сторону ворот, когда игрок был на льду',
                  onSort: c.sortByCorsiAgainstOZ,
                  size: ColumnSize.M,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CA ОЗ', style: Get.textTheme.bodyMedium),
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
                        DataCell(ValueAndPercentCell(e.corsiForPercent)),
                        DataCell(Text(e.corsiFor.toString())),
                        DataCell(Text(e.corsiAgainst.toString())),
                        DataCell(ValueAndPercentCell(e.corsiForOZPercent)),
                        DataCell(Text(e.corsiForOZ.toString())),
                        DataCell(Text(e.corsiAgainstOZ.toString())),
                      ]))
                  .toList(),
            ),
          );
        } else if (state is StatsPlayersCorsiError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
