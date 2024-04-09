import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/std_loader.dart';
import '../../stats_tournament/widgets/table_card/widgets/expander_widget.dart';
import 'stats_sum_full_players_stats_controller.dart';

class StatsSumFullPlayersStatsPage extends StatelessWidget {
  const StatsSumFullPlayersStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumFullPlayersStatsController())..init();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => c.isLoaded.isFalse
            ? const StdLoader()
            : DataTable2(
                sortColumnIndex: c.sortColumnIndex,
                sortAscending: c.isAscend.value,
                headingRowHeight: 40,
                dataRowHeight: 40,
                columnSpacing: 20,
                fixedLeftColumns: 1,
                border: TableBorder.all(color: StdColors.border24),
                horizontalMargin: 12,
                minWidth: 600,
                horizontalScrollController: ScrollController(),
                columns: [
                  DataColumn2(
                    fixedWidth: c.isExpanded.isTrue ? 176 : 80,
                    onSort: c.sortData,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          c.isExpanded.isTrue ? 'Команда' : 'К...',
                          style: Get.textTheme.bodySmall,
                        ),
                        ExpanderWidget(c.isExpanded),
                      ],
                    ),
                  ),
                  DataColumn2(
                    onSort: c.sortData,
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
                    onSort: c.sortData,
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
                    onSort: c.sortData,
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
                  DataColumn2(
                    onSort: c.sortData,
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
                    onSort: c.sortData,
                    size: ColumnSize.S,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('+', style: Get.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                  DataColumn2(
                    onSort: c.sortData,
                    size: ColumnSize.S,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('-', style: Get.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                ],
                rows: c.playerStatsList
                    .map((stats) => DataRow(
                          cells: [
                            DataCell(Text(stats.student.firstName)),
                            DataCell(
                              Text(stats.score?.value.toString() ?? '-'),
                            ),
                            DataCell(
                              Text(stats.goals?.value.toString() ?? '-'),
                            ),
                            DataCell(
                              Text(stats.assists?.value.toString() ?? '-'),
                            ),
                            DataCell(
                              Text(stats.plusMinus?.value.toString() ?? '-'),
                            ),
                            DataCell(Text(stats.plus?.toString() ?? '-')),
                            DataCell(Text(stats.minus?.toString() ?? '-')),
                          ],
                        ))
                    .toList(),
              ),
      ),
    );
  }
}
