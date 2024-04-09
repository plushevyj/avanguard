import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/video_fragment/data/dto/video_fragment_link_dto.dart';
import '../../../../module/video_fragment/presentation/view/video_fragment_widget.dart';
import '../period.dart';
import '../stats_controller.dart';
import '../widgets/periods_filter.dart';
import 'bloc/stats_shifts_bloc.dart';
import 'model/k_shifts.dart';
import 'model/match_shifts.dart';
import 'model/player.dart';
import 'model/shift.dart';
import 'stats_shifts_controller.dart';
import 'widgets/expand_players.dart';
import 'widgets/gap_widget.dart';
import 'widgets/goal_line.dart';

class StatsShiftsPage extends StatelessWidget {
  const StatsShiftsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<StatsController>().getShifts();
    return Scaffold(
      body: BlocBuilder<StatsShiftsBloc, StatsShiftsState>(
        builder: (context, state) {
          if (state is StatsShiftsInitial) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is StatsShiftsGot) {
            return SingleChildScrollView(
              padding: const EdgeInsets.only(top: Indents.x),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Indents.x),
                    child: PeriodsFilter(
                      controller: Get.put(StatsShiftsController()),
                      isOt: state.matchShifts.winByBullitts,
                    ),
                  ),
                  ShiftsWidget(state.matchShifts),
                ],
              ),
            );
          } else if (state is StatsShiftsError) {
            return Text(state.error);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class ShiftsWidget extends StatelessWidget {
  final MatchShifts matchShifts;

  const ShiftsWidget(this.matchShifts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    final y = matchShifts.players.length * rowY;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShiftsHeaderRow(matchShifts.winByBullitts),
          Stack(
            children: [
              ...?matchShifts.gaps.majority?.map((e) => GapWidget(e, y: y)),
              ...?matchShifts.gaps.minority?.map((e) => GapWidget(
                    e,
                    y: y,
                    isMajority: false,
                  )),
              if (c.filter.value == Period.all)
                for (var i = 1; i < 4; ++i) ...[TimeDivider(y: y, i: i)],
              ShiftRows(matchShifts),
              ...?matchShifts.goals?.map(
                (e) => GoalLine(e, players: matchShifts.players),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShiftRows extends StatelessWidget {
  final MatchShifts matchShifts;

  const ShiftRows(this.matchShifts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    final shiftsLength = matchShifts.shifts.values.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < matchShifts.players.length; ++i) ...[
          Row(
            children: [
              ShiftPlayerCell(player: matchShifts.players[i], i: i),
              if (i < shiftsLength)
                SizedBox(
                  width: (matchShifts.winByOT && c.periodMultiplier.value == 1)
                      ? periodsX + periodX
                      : periodsX,
                  height: rowY,
                  child: Stack(
                    children: [
                      ...matchShifts.shifts.values
                          .elementAt(i)
                          .map((e) => ShiftWidget(e))
                          .toList(),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

class TimeDivider extends StatelessWidget {
  final double y;
  final int i;

  const TimeDivider({required this.y, required this.i, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Obx(
      () => AnimatedPositioned(
        duration: duration,
        left: c.headerX.value + periodX * i,
        child: SizedBox(
          height: y,
          child: const VerticalDivider(
            color: Colors.black,
            thickness: 1,
            width: 1,
          ),
        ),
      ),
    );
  }
}

class ShiftPlayerCell extends StatelessWidget {
  final Player player;
  final int i;

  const ShiftPlayerCell({required this.player, required this.i, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Obx(
      () => AnimatedContainer(
        duration: duration,
        width: c.headerX.value,
        height: rowY,
        decoration: const BoxDecoration(
          border: Border(top: side, right: side, bottom: side),
        ),
        padding: const EdgeInsets.only(left: Indents.x, right: 10),
        child: Row(
          children: [
            c.isExpand.value
                ? ExpandedPlayer(player)
                : Text(
                    player.playerNumber.toString(),
                    style: Get.textTheme.bodyMedium?.apply(color: Grey.g54),
                  ),
            const SizedBox(width: 4),
            if (i < 3)
              const Icon(
                Icons.check_circle_outline,
                color: StdColors.green,
                size: 16,
              ),
            if (3 <= i && i < 6)
              const Icon(
                Icons.error_outline,
                color: StdColors.primary,
                size: 16,
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedPlayer extends StatelessWidget {
  final Player player;

  const ExpandedPlayer(this.player, {Key? key}) : super(key: key);

  static const _playerX = 100.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: _playerX,
            child: RichText(
              overflow: TextOverflow.fade,
              softWrap: false,
              text: TextSpan(
                text: player.playerNumber.toString(),
                style: const TextStyle(color: Grey.g54),
                children: [
                  TextSpan(
                    text: ' ${player.firstName[0]}. ${player.lastName}',
                    style: const TextStyle(color: StdColors.textColor),
                  ),
                ],
              ),
            ),
          ),
          Container(width: _playerX, height: 1, color: StdColors.border24),
          Text(
            '${player.totalTime} / ${player.shiftsCount}',
            style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}

class ShiftWidget extends StatelessWidget {
  final Shift shift;

  ShiftWidget(this.shift, {Key? key})
      : _offsetX = shift.value[1] * point,
        _x = shift.value[3] * point,
        super(key: key);

  final double _offsetX;
  final double _x;

  String _toMS(int ms) {
    return DateFormat('ms').format(DateTime(0).add(Duration(milliseconds: ms)));
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Positioned(
      top: 10,
      left: (_offsetX - c.periodOffset.value) * c.periodMultiplier.value,
      child: Tooltip(
        triggerMode: TooltipTriggerMode.tap,
        preferBelow: false,
        richMessage: TextSpan(
          text: shift.fullName,
          style: style,
          children: [
            TextSpan(text: '\nПродолжит.: ', style: styleG),
            TextSpan(text: _toMS(shift.value[3]), style: style),
            TextSpan(text: '\nНачало: ', style: styleG),
            TextSpan(text: _toMS(shift.value[1]), style: style),
            TextSpan(text: '\nКонец: ', style: styleG),
            TextSpan(text: '${_toMS(shift.value[2])}\n', style: style),
            WidgetSpan(
              child: VideoFragmentWidget(VideoFragmentLinkDto.fromShift(shift)),
            ),
          ],
        ),
        child: Container(
          width: _x * c.periodMultiplier.value,
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: shift.isOverplayed
                ? StdColors.primary.shade300
                : StdColors.blue.shade300,
          ),
        ),
      ),
    );
  }
}

class ShiftsHeaderRow extends StatelessWidget {
  final bool winByOT;

  const ShiftsHeaderRow(this.winByOT, {super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Row(
      children: [
        const ExpandPlayers(),
        Column(
          children: [
            PeriodsTitleRow(winByOT),
            Container(
              width: (winByOT && c.periodMultiplier.value == 1)
                  ? periodsX + periodX
                  : periodsX,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(color: StdColors.border24),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PeriodsTitleRow extends StatelessWidget {
  final bool winByOT;

  const PeriodsTitleRow(this.winByOT, {Key? key}) : super(key: key);

  static final _style = Get.textTheme.bodySmall;

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return c.filter.value == Period.all
        ? Row(
            children: [
              for (var i = 1; i < 4; ++i)
                Container(
                  width: periodX,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: StdColors.border24),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 12),
                      Text('$i-й период', style: _style),
                    ],
                  ),
                ),
              if (winByOT)
                Container(
                  width: periodX,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: StdColors.border24),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 12),
                      Text('OT', style: _style),
                    ],
                  ),
                ),
            ],
          )
        : Container(
            width: periodsX,
            height: 28,
            decoration: BoxDecoration(
              border: Border.all(color: StdColors.border24),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 12),
                c.filter.value == Period.ot
                    ? Text(c.filter.value, style: _style)
                    : Text('${c.filter.value}-й период', style: _style),
              ],
            ),
          );
  }
}
