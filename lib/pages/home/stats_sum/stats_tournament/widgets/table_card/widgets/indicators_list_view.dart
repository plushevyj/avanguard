import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../stats_sum_choose/widgets/indicator_diagram.dart';
import '../model/statistics_mkc_chess_response.dart';

class IndicatorsListView extends StatelessWidget {
  final List<String>? indicators;
  final List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data;
  final double? diameter;
  final bool viewAsNumber;

  const IndicatorsListView({
    this.data,
    this.diameter,
    this.indicators,
    this.viewAsNumber = false,
    Key? key,
  })  : assert(indicators == null),
        super(key: key);

  const IndicatorsListView.simple(
    this.indicators, [
    this.diameter,
    this.data,
    Key? key,
    this.viewAsNumber = false,
  ])  : assert(data == null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (indicators == null && data == null) {
      return const Center(child: Text('–'));
    }

    if (indicators != null) {
      return Row(
        children: indicators
                ?.map((indicator) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: IndicatorDiagram(
                        indicator,
                        diameter: diameter,
                      ),
                    ))
                .toList() ??
            [],
      );
    }

    if (data != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: viewAsNumber
            ? data!
                .map((e) => Text(e?.scoreView ?? '-').paddingOnly(right: 8))
                .toList()
            : data!
                .map((e) => Tooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      preferBelow: false,
                      message: e?.tooltip,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IndicatorDiagram(e?.type ?? ''),
                      ),
                    ))
                .toList(),
      );
    }

    return const SizedBox();
  }
}
