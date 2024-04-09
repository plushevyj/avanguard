import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../stats_controller.dart';
import 'bloc/faceoffs_bloc.dart';
import 'widgets/teams_header_faceoff_widget.dart';

class FaceoffsCard extends StatelessWidget {
  final bool isSum;

  const FaceoffsCard(this.isSum, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<StatsController>().getFaceoffsCard();
    return BlocBuilder<FaceoffBloc, FaceoffsState>(
      builder: (context, state) {
        if (state is FaceoffInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is FaceoffsGot) {
          final faceoff = state.faceoff;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TeamsHeaderFaceoffWidget(faceoff),
            ],
          );
        } else if (state is FaceoffsError) {
          return Text(state.error, style: Get.textTheme.displayLarge);
        } else {
          return const CircularProgressIndicator.adaptive();
        }
      },
    );
  }
}
