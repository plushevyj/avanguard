import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';
import '../../model/statistics_mkc_table_item_dto.dart';
import '../expander_widget.dart';
import '../indicators_list_view.dart';
import '../team_cell.dart';
import 'tournament_table_controller.dart';

class TournamentTable extends StatelessWidget {
  const TournamentTable({Key? key}) : super(key: key);

  MaterialStateProperty<Color?>? _getColor(StatisticsMKCTableItemDto game) {
    if (game.isOurTeam) {
      return MaterialStatePropertyAll(StdColors.primary.shade100);
    }

    if (game.nextRivalDate != null) {
      return const MaterialStatePropertyAll(Grey.g12);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<TournamentTableController>();
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
        minWidth: 1200,
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
            tooltip: 'Игры',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('И', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Выигрыши',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('В', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Выигрыши в овертайме',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ВО', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Поражения',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('П', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Поражения в овертайме',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ПО', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Разница шайб',
            size: ColumnSize.L,
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
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('О', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Забито шайб',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ЗШ', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            tooltip: 'Пропущено шайб',
            size: ColumnSize.L,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ПШ', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
          DataColumn2(
            onSort: c.sortData,
            fixedWidth: 164,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Форма', style: Get.textTheme.bodyMedium),
                const SizedBox(width: 6),
              ],
            ),
          ),
        ],
        rows: c.classicGamesList
            .map((game) => DataRow(
                  color: _getColor(game),
                  cells: [
                    DataCell(
                      TeamCell(
                        name: game.teamName,
                        logo: game.teamLogo,
                        isExpanded: c.isExpanded,
                        nextRival: game.nextRivalDate,
                      ),
                    ),
                    DataCell(Text(game.games.toString())),
                    DataCell(Text(game.wins.toString())),
                    DataCell(Text(game.winsOT.toString())),
                    DataCell(Text(game.loses.toString())),
                    DataCell(Text(game.losesOT.toString())),
                    DataCell(Text(game.puckDiff.toString())),
                    DataCell(Text(game.score.toString())),
                    DataCell(Text(game.goals.toString())),
                    DataCell(Text(game.puckPasses.toString())),
                    DataCell(IndicatorsListView.simple(game.indicators)),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
