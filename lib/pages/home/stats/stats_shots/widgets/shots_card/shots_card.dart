import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/std_loader.dart';
import '../../../../../../widgets/shots_circular_indicator.dart';
import '../../../stats_controller.dart';
import 'bloc/shots_bloc.dart';

class ShotsCard extends StatelessWidget {
  const ShotsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StatsController()).getShotsCard();
    return BlocBuilder<ShotsBloc, ShotsState>(
      builder: (context, state) {
        if (state is ShotsInitial) {
          return const StdLoader();
        } else if (state is ShotsEmpty) {
          return Text('Нет данных', style: Get.textTheme.displayMedium);
        } else if (state is ShotsGot) {
          final shots = state.shots;
          return DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                const BoxShadow(color: Colors.white),
                BoxShadow(
                  blurRadius: 14,
                  color: Colors.black.withOpacity(.18),
                  offset: const Offset(0, 1),
                ),
              ],
              color: Colors.white,
            ),
            child: Table(
              border: TableBorder.symmetric(
                inside: const BorderSide(color: StdColors.innerBorder),
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    ShotsCircularIndicator(shots.shots),
                    ShotsCircularIndicator(
                      shots.shotsOnGoal,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    ShotsCircularIndicator(
                      shots.shotsOnGoalDangerous,
                    ),
                    ShotsCircularIndicator(shots.blockedShots),
                  ],
                ),
              ],
            ),
          );
        } else if (state is ShotsError) {
          return Text(state.error, style: Get.textTheme.displayLarge);
        } else {
          return const CircularProgressIndicator.adaptive();
        }
      },
    );
  }
}
