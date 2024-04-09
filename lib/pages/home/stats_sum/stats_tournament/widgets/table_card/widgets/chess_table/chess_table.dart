import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';
import '../../model/statistics_mkc_chess_response.dart';
import '../expander_widget.dart';
import '../indicators_list_view.dart';
import '../team_cell.dart';
import 'chess_table_controller.dart';

class ChessTable extends StatelessWidget {
  const ChessTable({Key? key}) : super(key: key);

  MaterialStateProperty<Color?>? _getColor(StatisticsMKCChessRowItemDto row) {
    if (row.isOurTeam) {
      return MaterialStatePropertyAll(StdColors.primary.shade100);
    }

    if (row.next != null) {
      return const MaterialStatePropertyAll(Grey.g12);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<ChessTableController>();
    final columns = c.chess.columns.map((e) => e.id).toList();
    return Obx(
      () => Column(
        children: [
          Container(),
          Row(
            children: [
              Text('Форма', style: Get.textTheme.titleSmall),
              const SizedBox(width: 8),
              Switch(
                value: c.viewAsNumber.value,
                onChanged: (value) => c.viewAsNumber.value = value,
              ),
              const SizedBox(width: 8),
              Text('Счет', style: Get.textTheme.titleSmall),
            ],
          ).paddingOnly(left: Indents.y, bottom: Indents.x),
          Expanded(
            child: Obx(
              () => DataTable2(
                sortColumnIndex: c.sortColumnIndex,
                sortAscending: c.isAscend.value,
                headingRowHeight: 40,
                dataRowHeight: 40,
                columnSpacing: 20,
                fixedLeftColumns: 1,
                border: TableBorder.all(color: StdColors.border24),
                horizontalMargin: 12,
                minWidth: 4000,
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
                    tooltip: 'Разница шайб',
                    fixedWidth: 72,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('РШ', style: Get.textTheme.bodyMedium),
                        const SizedBox(width: 6),
                      ],
                    ),
                  ),
                  DataColumn2(
                    onSort: c.sortData,
                    tooltip: 'Очки',
                    fixedWidth: 72,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('О', style: Get.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                  ...c.chess.columns.map((e) => DataColumn2(
                        tooltip: e.name,
                        label: Center(
                          child: Text(
                            e.name,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        fixedWidth: 164,
                      )),
                ],
                rows: c.rows
                    .map(
                      (row) => DataRow(
                        color: _getColor(row),
                        cells: [
                          DataCell(
                            TeamCell(
                              name: row.team.name,
                              logo: row.team.teamLogo,
                              isExpanded: c.isExpanded,
                              nextRival: row.next,
                            ),
                          ),
                          DataCell(Text(row.puckDifference.toString())),
                          DataCell(Text(row.score.toString())),
                          ...[
                            ...[
                              for (var i = 0; i < row.games.length; i++)
                                DataCell(IndicatorsListView(
                                  data: row.games[columns[i]]?.data,
                                  viewAsNumber: c.viewAsNumber.value,
                                )),
                            ]
                          ],
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
