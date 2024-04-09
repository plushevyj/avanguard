import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'constant/playground_const.dart';
import 'model/heat_point.dart';

class StatsSumShotsHeatmap extends StatefulWidget {
  const StatsSumShotsHeatmap({super.key, required this.heatPoints});

  final List<HeatPoint> heatPoints;

  @override
  State<StatsSumShotsHeatmap> createState() => _StatsSumShotsHeatmapState();
}

class _StatsSumShotsHeatmapState extends State<StatsSumShotsHeatmap> {
  int touchedIndex = -1;

  Color greyColor = Colors.grey;
  final _availableColors = [
    const Color.fromRGBO(255, 246, 177, 1),
    const Color.fromRGBO(255, 243, 172, 1),
    const Color.fromRGBO(255, 240, 168, 1),
    const Color.fromRGBO(254, 236, 163, 1),
    const Color.fromRGBO(254, 233, 158, 1),
    const Color.fromRGBO(254, 230, 153, 1),
    const Color.fromRGBO(254, 227, 149, 1),
    const Color.fromRGBO(254, 224, 144, 1),
    const Color.fromRGBO(254, 219, 139, 1),
    const Color.fromRGBO(254, 214, 135, 1),
    const Color.fromRGBO(254, 209, 130, 1),
    const Color.fromRGBO(254, 204, 125, 1),
    const Color.fromRGBO(254, 199, 121, 1),
    const Color.fromRGBO(253, 194, 116, 1),
    const Color.fromRGBO(253, 189, 111, 1),
    const Color.fromRGBO(253, 184, 106, 1),
    const Color.fromRGBO(253, 179, 102, 1),
    const Color.fromRGBO(253, 174, 97, 1),
    const Color.fromRGBO(252, 168, 94, 1),
    const Color.fromRGBO(251, 161, 91, 1),
    const Color.fromRGBO(250, 155, 88, 1),
    const Color.fromRGBO(249, 148, 85, 1),
    const Color.fromRGBO(249, 142, 82, 1),
    const Color.fromRGBO(248, 135, 79, 1),
    const Color.fromRGBO(247, 129, 76, 1),
    const Color.fromRGBO(246, 122, 73, 1),
    const Color.fromRGBO(245, 115, 70, 1),
    const Color.fromRGBO(244, 109, 67, 1),
    const Color.fromRGBO(241, 103, 64, 1),
    const Color.fromRGBO(238, 97, 61, 1),
    const Color.fromRGBO(235, 91, 59, 1),
    const Color.fromRGBO(232, 85, 56, 1),
    const Color.fromRGBO(230, 79, 53, 1),
    const Color.fromRGBO(227, 72, 50, 1),
    const Color.fromRGBO(224, 66, 47, 1),
    const Color.fromRGBO(221, 60, 45, 1),
    const Color.fromRGBO(218, 54, 42, 1),
    const Color.fromRGBO(215, 48, 39, 1),
    const Color.fromRGBO(210, 43, 39, 1),
    const Color.fromRGBO(205, 38, 39, 1),
    const Color.fromRGBO(200, 34, 39, 1),
    const Color.fromRGBO(195, 29, 39, 1),
    const Color.fromRGBO(190, 24, 39, 1),
    const Color.fromRGBO(185, 19, 38, 1),
    const Color.fromRGBO(180, 14, 38, 1),
    const Color.fromRGBO(175, 10, 38, 1),
    const Color.fromRGBO(170, 5, 38, 1),
    const Color.fromRGBO(165, 0, 38, 1),
  ];

  List<int> selectedSpots = [];

  @override
  Widget build(BuildContext context) {
    print('widget.heatPoints = ${widget.heatPoints}');
    // (x, y, size)
    // final data = [
    //   (4.0, 4.0, 4.0),
    //   (2.0, 5.0, 12.0),
    //   (4.0, 5.0, 8.0),
    //   (8.0, 6.0, 20.0),
    //   (5.0, 7.0, 14.0),
    //   (7.0, 2.0, 18.0),
    //   (3.0, 2.0, 36.0),
    //   (2.0, 8.0, 22.0),
    //   (8.0, 8.0, 32.0),
    //   (5.0, 2.5, 24.0),
    //   (3.0, 7.0, 18.0),
    // ];
    // List<(int, int, int)> data = [];
    // for (var i = 0; i < 28; i++) {
    //   for (var j = 0; j < 62; j++) {
    //     data.add((i, j, 13));
    //   }
    // }

    return AspectRatio(
      aspectRatio: PlaygroundConstCosmetic.maxX / PlaygroundConstCosmetic.maxY,
      child: Stack(
        children: [
          ScatterChart(
            ScatterChartData(
              // scatterSpots: data.asMap().entries.map((e) {
              //   final index = e.key;
              //   final (int x, int y, int size) = e.value;
              //   return ScatterSpot(
              //     x.toDouble(),
              //     y.toDouble(),
              //     dotPainter: FlDotSquarePainter(
              //       color: Colors.red.withOpacity(0.3),
              //       size: size.toDouble(),
              //       strokeWidth: 0,
              //     ),
              //   );
              // }).toList(),
              scatterSpots: widget.heatPoints.map((e) {
                return ScatterSpot(
                  e.x.toDouble(),
                  e.y.toDouble(),
                  dotPainter: FlDotSquarePainter(
                    color: Colors.red.withOpacity(0.3),
                    size: 12,
                    strokeWidth: 0,
                  ),
                );
              }).toList(),
              minX: 0,
              maxX: PlaygroundConstCosmetic.maxX.toDouble(),
              minY: 0,
              maxY: PlaygroundConstCosmetic.maxY.toDouble(),
              borderData: FlBorderData(
                show: false,
              ),
              gridData: FlGridData(
                show: false,
                drawHorizontalLine: true,
                checkToShowHorizontalLine: (value) => true,
                getDrawingHorizontalLine: (value) => const FlLine(
                  color: Colors.grey,
                ),
                drawVerticalLine: true,
                checkToShowVerticalLine: (value) => true,
                getDrawingVerticalLine: (value) => const FlLine(
                  color: Colors.grey,
                ),
              ),
              titlesData: const FlTitlesData(
                show: false,
              ),
              showingTooltipIndicators: selectedSpots,
              scatterTouchData: ScatterTouchData(
                enabled: true,
                handleBuiltInTouches: false,
                mouseCursorResolver: (touchEvent, response) {
                  return response == null || response.touchedSpot == null
                      ? MouseCursor.defer
                      : SystemMouseCursors.click;
                },
                touchTooltipData: ScatterTouchTooltipData(
                  tooltipBgColor: Colors.black,
                  getTooltipItems: (touchedBarSpot) {
                    return ScatterTooltipItem(
                      'X: ',
                      textStyle: TextStyle(
                        height: 1.2,
                        color: Colors.grey[100],
                        fontStyle: FontStyle.italic,
                      ),
                      bottomMargin: 10,
                      children: [
                        TextSpan(
                          text: '${touchedBarSpot.x.toInt()}\n',
                          style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Y: ',
                          style: TextStyle(
                            height: 1.2,
                            color: Colors.grey[100],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: '${touchedBarSpot.y.toInt().toString()}\n',
                          style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Size: ',
                          style: TextStyle(
                            height: 1.2,
                            color: Colors.grey[100],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: touchedBarSpot.size.width.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                touchCallback: (event, touchResponse) {
                  if (touchResponse == null ||
                      touchResponse.touchedSpot == null) {
                    return;
                  }
                  if (event is FlTapUpEvent) {
                    final sectionIndex = touchResponse.touchedSpot!.spotIndex;
                    setState(() {
                      if (selectedSpots.contains(sectionIndex)) {
                        selectedSpots.remove(sectionIndex);
                      } else {
                        selectedSpots.add(sectionIndex);
                      }
                    });
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
