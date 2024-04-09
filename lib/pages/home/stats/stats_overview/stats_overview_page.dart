import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../customization/pics.dart';
import '../../../../customization/std_colors.dart';
import '../../../../widgets/linear_metric.dart';
import '../stats_controller.dart';
import '../widgets/periods_filter.dart';
import 'bloc/stats_overview_bloc.dart';
import 'model/stats_overview.dart';
import 'stats_overview_controller.dart';

class StatsOverviewPage extends StatelessWidget {
  const StatsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StatsController()).getStats();
    return BlocBuilder<StatsOverviewBloc, StatsOverviewState>(
      builder: (context, state) {
        if (state is StatsOverviewInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is StatsOverviewGot) {
          Get.put(StatsOverviewController()).weAtHome = state.stats.weAtHome;
          return SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: Indents.x,
              top: 20,
              right: Indents.x,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _StatsCard(state.stats),
                const SizedBox(height: 43),
                PeriodsFilter(
                  controller: Get.put(StatsOverviewController()),
                  isOt: state.stats.winByBullitts,
                ),
                const SizedBox(height: 36),
                ...state.stats.metrics
                    .map((metric) => LinearMetric(
                          metric,
                          weAtHome: state.stats.weAtHome,
                        ))
                    .toList(),
              ],
            ),
          );
        } else if (state is StatsOverviewError) {
          return Text(state.error, style: Get.textTheme.displayLarge);
        } else {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
      },
    );
  }
}

class _StatsCard extends StatelessWidget {
  final StatisticsGetMatchIndexPageInfoResponseDto stats;

  const _StatsCard(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          const BoxShadow(color: Colors.white),
          BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(.18),
            offset: const Offset(0, 1),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Get.put(StatsController()).gameDate,
            style: Get.textTheme.titleMedium?.apply(color: Grey.g54),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 64,
                  child: Column(
                    children: [
                      if (stats.teamLogo?.home != null)
                        SizedBox(
                          width: 48,
                          height: 42,
                          child: Image.network(stats.teamLogo!.home!),
                        ),
                      Text(stats.lhsTeamName, textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          stats.score.data.home.toString(),
                          style: TextStyle(
                            color: stats.score.data.isHomeWin ? null : Grey.g68,
                            height: 32 / 28,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          ' - ',
                          style: TextStyle(
                            color: Grey.g68,
                            height: 32 / 28,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          stats.score.data.away.toString(),
                          style: TextStyle(
                            color: stats.score.data.isHomeWin ? Grey.g68 : null,
                            height: 32 / 28,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      stats.halfScores.join(', '),
                      style: Get.textTheme.bodyMedium,
                    ),
                  ],
                ).paddingSymmetric(horizontal: Indents.y),
                SizedBox(
                  width: 64,
                  child: Column(
                    children: [
                      if (stats.teamLogo?.away != null)
                        SizedBox(
                          width: 48,
                          height: 42,
                          child: Image.network(stats.teamLogo!.away!),
                        ),
                      Text(stats.rhsTeamName, textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Indents.y),
          // Button(
          //   text: 'Смотреть хайлайты', // todo go to hightlights
          //   onTap: () {},
          // ),
          const Text(
            'Хайлайты к матчу не загружены',
            style: TextStyle(color: Grey.g68),
          ),
          const SizedBox(height: 19),
          ProtocolWidget(stats.uiProtocols),
        ],
      ),
    );
  }
}

class ProtocolWidget extends StatelessWidget {
  final List<Protocol> protocols;

  const ProtocolWidget(this.protocols, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Indents.x),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Grey.g12,
      ),
      child: Column(
        children: [
          Text('Протокол', style: Get.textTheme.displaySmall),
          const SizedBox(height: Indents.x),
          ...protocols.map(ProtocolEventRow.new).toList(),
        ],
      ),
    );
  }
}

class ProtocolEventRow extends StatelessWidget {
  final Protocol protocol;

  const ProtocolEventRow(this.protocol, {Key? key}) : super(key: key);

  Color _color(bool isOurTeam) {
    if (protocol.isFinalGoal) return StdColors.primary;
    return isOurTeam ? Colors.black : StdColors.border24;
  }

  String getTime(String time) => time.length == 1 ? '0$time′' : '$time′';

  @override
  Widget build(BuildContext context) {
    final isOurTeam =
        Get.find<StatsOverviewController>().weAtHome == protocol.isHome;
    return Row(
      mainAxisAlignment:
          protocol.isHome! ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          // hardcoded puck picture height fix
          transform: Matrix4.translationValues(0, -1.8, 0),
          child: SvgPicture.asset(
            Pics.hockeyPuck,
            color: _color(isOurTeam),
            width: 16,
            height: 16,
          ),
        ),
        const SizedBox(width: Indents.internal),
        Text(getTime(protocol.time!)),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: protocol.isHome!
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            Text(
              protocol.name,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            if (protocol.uiAssists != null)
              Text(
                protocol.uiAssists!,
                style: const TextStyle(color: Grey.g68),
              ),
            if (protocol.isMajority || protocol.isMinority)
              Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: StdColors.primary,
                ),
                child: Text(
                  protocol.isMinority ? 'МНШ' : 'БЛШ',
                  style: Get.textTheme.bodySmall?.apply(color: Colors.white),
                ),
              ),
            const SizedBox(height: 20),
          ],
        ),
      ].myReverse(!protocol.isHome!),
    );
  }
}

extension ListExt on List<Widget> {
  List<Widget> myReverse(bool doIt) => doIt ? reversed.toList() : this;
}
