import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/buttons/filters_button.dart';
import '../../anthropometry_controller.dart';
import '../../filters/anthropometry_filters_page.dart';
import '../../model/anthropometry.dart';
import '../../widgets/legend_season_row.dart';

class WeightPage extends StatelessWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final params = Get.find<AnthropometryController>().params;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: Indents.internal,
          left: Indents.x,
          right: Indents.x,
          bottom: 21,
        ),
        child: Column(
          children: [
            FiltersButton(
              onTap: () => Get.to(() => const AnthropometryFiltersPage()),
            ),
            _ChartWidget(params: params),
            const SizedBox(height: Indents.y * 2),
            _LegendWidget(params: params),
          ],
        ),
      ),
    );
  }
}

class _ChartWidget extends StatelessWidget {
  final RxList<Param> params;

  const _ChartWidget({required this.params, Key? key}) : super(key: key);

  static const months = [
    'январь',
    'февраль',
    'март',
    'апрель',
    'май',
    'июнь',
    'июль',
    'август',
    'сентябрь',
    'октябрь',
    'ноябрь',
    'декабрь',
  ];
  static final days = List.generate(12, (index) => index * 30);
  static final monthsMap = Map.fromIterables(days, months);
  static final style = Get.textTheme.bodySmall?.apply(color: Grey.g54);

  Widget leftTitleWidgets(double value, TitleMeta _) {
    return Text('${value.toInt()} КГ', style: style, textAlign: TextAlign.left);
  }

  Widget bottomTitleWidgets(double dayIndex, TitleMeta _) {
    String? month = monthsMap[dayIndex];
    return month == null
        ? const SizedBox()
        : Padding(
            padding: const EdgeInsets.only(top: Indents.y),
            child: Transform.rotate(
              angle: -pi / 3.6, // 180 / 3.6 = 50
              child: Text(
                month.toUpperCase(),
                style: StdStyles.interBody,
                textAlign: TextAlign.left,
              ),
            ),
          );
  }

  DateTime get lastSeason {
    // final now = DateTime.now();
    // return now.month > 6 ? DateTime(now.year, 6) : DateTime(now.year - 1, 6);
    return DateTime(2022, 6);
  }

  bool isAfter(Param param) => param.date.isAfter(lastSeason);

  @override
  Widget build(BuildContext context) {
    final paramsByYear = Get.find<AnthropometryController>().paramsByYear;
    return Container(
      margin: const EdgeInsets.only(top: 31),
      width: double.infinity,
      height: 340,
      child: Obx(
        () => LineChart(
          LineChartData(
            minX: 0,
            maxX: 365,
            minY: 45,
            maxY: 120,
            gridData: FlGridData(
              show: true,
              horizontalInterval: 1,
              verticalInterval: 30,
              drawHorizontalLine: false,
            ),
            titlesData: FlTitlesData(
              show: true,
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  getTitlesWidget: leftTitleWidgets,
                  reservedSize: 34,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 30,
                  getTitlesWidget: bottomTitleWidgets,
                  reservedSize: 40,
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: const Color(0xFF616161).withOpacity(.9),
                tooltipRoundedRadius: 4,
                tooltipPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                getTooltipItems: (List<LineBarSpot> points) => points
                    .map(
                      (point) => LineTooltipItem(
                        '${point.y} кг\nДата контроля '
                        '${DateFormat('dd.MM.yyyy').format(params.firstWhere((e) => e.dayFromYear == point.x).date)}г',
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            lineBarsData: [
              ...paramsByYear.entries.map((e) => LineChartBarData(
                    spots: e.value
                        .map((param) =>
                            FlSpot(param.dayFromYear.toDouble(), param.weight))
                        .toList(),
                    isCurved: true,
                    color: e.value.any(isAfter)
                        ? StdColors.green
                        : StdColors.green.withOpacity(.6),
                    barWidth: 1,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 4,
                          color: StdColors.green.withOpacity(.2),
                          strokeWidth: 1,
                          strokeColor: StdColors.green.withOpacity(.6),
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: e.value.any(isAfter) ? true : false,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFFE4F2E4),
                          const Color(0xFFE4F2E4).withOpacity(0),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class _LegendWidget extends StatelessWidget {
  final List<Param> params;

  const _LegendWidget({required this.params, Key? key}) : super(key: key);

  List<int> get seasons => params.map((e) => e.season).toSet().toList();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            if (seasons.length > 1)
              for (int i = 0; i < seasons.length; i++) ...[
                if (i != 0) const SizedBox(height: Indents.x / 2),
                LegendSeasonRow(seasons[i], color: StdColors.green),
              ],
          ],
        ),
        // const VacationWidget(),
      ],
    );
  }
}
