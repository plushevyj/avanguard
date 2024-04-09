import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/time.dart';
import '../../../../../../core/utils/view_extension.dart';
import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/std_loader.dart';
import '../../../stats_sum_choose/widgets/indicator_diagram.dart';
import '../match_picker_controller.dart';
import '../model/statistics_mkc_matches_response_dto.dart';
import 'choose_all_matches_tile.dart';

class MatchesCard extends StatelessWidget {
  const MatchesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return Obx(
      () {
        if (c.isMatchesLoaded.isTrue && c.matches.isEmpty) {
          return const SizedBox();
        }
        return c.isMatchesLoaded.isFalse
            ? const StdLoader()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: Indents.x),
                child: Container(
                  decoration: StdDecor.card,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: c.matches.length + 1,
                    itemBuilder: (_, i) {
                      if (i == 0) return const ChooseAllMatchesTile();
                      return MatchTile(c.matches[i - 1]);
                    },
                  ),
                ),
              );
      },
    );
  }
}

class MatchTile extends StatefulWidget {
  final StatisticsMKCMatchesResponseDto match;

  const MatchTile(this.match, {Key? key}) : super(key: key);

  @override
  State<MatchTile> createState() => _MatchTileState();
}

class _MatchTileState extends State<MatchTile> {
  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return ListTile(
      onTap: () => setState(() => c.toggleMatchActive(widget.match)),
      leading: Checkbox(
        value: widget.match.isActive,
        onChanged: (_) => setState(() => c.toggleMatchActive(widget.match)),
      ),
      title: Row(
        children: [
          Text(
              '${widget.match.date.day}.${widget.match.date.month}.${widget.match.date.year} | '),
          IndicatorDiagram(widget.match.resultIndicator, diameter: 15),
          const Gap(8),
          widget.match.score.asScore,
        ],
      ),
      titleTextStyle: Get.textTheme.bodyLarge?.apply(color: Colors.black),
      subtitle:
          Text('${widget.match.homeTeamName} - ${widget.match.awayTeamName}'),
    );
  }
}
