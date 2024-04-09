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
import '../../widgets/legend_standard_row.dart';

const _pointColors = [
  Color(0xFFF9AE54),
  Color(0xFFFFCD4D),
];

class BmiPage extends StatelessWidget {
  const BmiPage({Key? key}) : super(key: key);

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
  static final gradientColors = [
    const Color(0xFFFFF8E5),
    const Color(0xFFFFF8E5).withOpacity(0),
  ];

  Widget leftTitleWidgets(double value, TitleMeta _) {
    return Text('${value.toInt()} %', style: style, textAlign: TextAlign.left);
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
            minY: 5,
            maxY: 35,
            gridData: FlGridData(
              show: true,
              horizontalInterval: 1,
              verticalInterval: 30,
              drawHorizontalLine: false,
            ),
            titlesData: FlTitlesData(
              show: true,
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 5,
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
                getTooltipItems: (List<LineBarSpot> points) => points.map(
                  (point) {
                    if (point.x == 1 && point.y == 15 ||
                        point.x == 360 && point.y == 15) return null;
                    return LineTooltipItem(
                      '${point.y} % ИМТ\nДата контроля '
                      '${DateFormat('dd.MM.yyyy').format(params.firstWhere((e) => e.dayFromYear == point.x).date)}г'
                      '${10 < point.y && point.y < 15 ?
                          '\nВ ПРЕДЕЛАХ НОРМЫ' : ''}',
                      const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            lineBarsData: [
              // Standard zone
              LineChartBarData(
                spots: [
                  const FlSpot(1, 15),
                  const FlSpot(360, 15),
                ],
                isCurved: true,
                color: Colors.transparent,
                barWidth: 0,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: StdColors.border24,
                  cutOffY: 10,
                  applyCutOffY: true,
                ),
              ),
              ...paramsByYear.entries.map((e) => LineChartBarData(
                    spots: e.value
                        .map((param) =>
                            FlSpot(param.dayFromYear.toDouble(), param.bmi))
                        .toList(),
                    isCurved: true,
                    color: e.value.any((element) => isAfter(element))
                        ? _pointColors.first
                        : _pointColors.last,
                    barWidth: 1,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 4,
                          color: e.value.any(isAfter)
                              ? _pointColors.first
                              : Colors.transparent,
                          strokeWidth: 1,
                          strokeColor: _pointColors.last,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: e.value.any(isAfter) ? true : false,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: gradientColors,
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
                LegendSeasonRow(seasons[i], color: _pointColors[i]),
              ],
            const SizedBox(height: Indents.x / 2),
            const LegendStandardRow(),
          ],
        ),
        // const VacationWidget(),
      ],
    );
  }
}
