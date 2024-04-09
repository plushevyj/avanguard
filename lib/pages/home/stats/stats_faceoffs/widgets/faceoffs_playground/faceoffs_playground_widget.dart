import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../customization/pics.dart';
import '../../../../../../customization/std_colors.dart';
import '../../../stats_controller.dart';
import 'bloc/faceoffs_playground_bloc.dart';
import 'model/faceoffs_score.dart';

class FaceoffsPlaygroundWidget extends StatelessWidget {
  const FaceoffsPlaygroundWidget({Key? key}) : super(key: key);

  static const _smallRadius = 32.0;
  static const _bigRadius = 49.0;
  static const _picRatio = 328 / 665;
  static const _shiftcoef = 1.45;

  @override
  Widget build(BuildContext context) {
    Get.find<StatsController>().getFaceoffsPlayground();
    return OrientationBuilder(
      builder: (ctx, orientation) {
        final x = Get.width - Indents.x * 4;
        final smallHalfYShift = x / _picRatio / 2 - _smallRadius;
        return BlocBuilder<FaceoffsPlaygroundBloc, FaceoffsPlaygroundState>(
          builder: (context, state) {
            if (state is FaceoffsPlaygroundInitial) {
              return const CircularProgressIndicator.adaptive();
            } else if (state is FaceoffsPlaygroundGot) {
              final playground = state.data;
              return Stack(
                children: [
                  SvgPicture.asset(
                    Pics.faceoffPlayground,
                    width: x,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: x * .18,
                    left: x * .12,
                    child: _ScoreCircle(
                      radius: _bigRadius,
                      score: playground.circleOne,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    top: x * .18,
                    right: x * .12,
                    child: _ScoreCircle(
                      radius: _bigRadius,
                      score: playground.circleTwo,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    top: smallHalfYShift - _smallRadius * _shiftcoef,
                    left: x * .12 + _bigRadius - _smallRadius,
                    child: _ScoreCircle(
                      radius: _smallRadius,
                      score: playground.circleThree,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    top: smallHalfYShift - _smallRadius * _shiftcoef,
                    right: x * .12 + _bigRadius - _smallRadius,
                    child: _ScoreCircle(
                      radius: _smallRadius,
                      score: playground.circleFour,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    top: smallHalfYShift,
                    left: x / 2 - _smallRadius,
                    child: _ScoreCircle(
                      radius: _smallRadius,
                      score: playground.circleFive,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    bottom: smallHalfYShift - _smallRadius * _shiftcoef,
                    left: x * .12 + _bigRadius - _smallRadius,
                    child: _ScoreCircle(
                      radius: _smallRadius,
                      score: playground.circleSix,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    bottom: smallHalfYShift - _smallRadius * _shiftcoef,
                    right: x * .12 + _bigRadius - _smallRadius,
                    child: _ScoreCircle(
                      radius: _smallRadius,
                      score: playground.circleSeven,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    bottom: x * .18,
                    left: x * .12,
                    child: _ScoreCircle(
                      radius: _bigRadius,
                      score: playground.circleEight,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                  Positioned(
                    bottom: x * .18,
                    right: x * .12,
                    child: _ScoreCircle(
                      radius: _bigRadius,
                      score: playground.circleNine,
                      weAtHome: playground.weAtHome,
                    ),
                  ),
                ],
              );
            } else if (state is FaceoffsPlaygroundError) {
              return Text(state.error);
            } else {
              return const SizedBox();
            }
          },
        );
      },
    );
  }
}

class _ScoreCircle extends StatelessWidget {
  final double radius;
  final FaceoffsScore score;
  final bool weAtHome;

  const _ScoreCircle({
    required this.radius,
    required this.score,
    required this.weAtHome,
    Key? key,
  }) : super(key: key);

  Color get _colorByScore {
    if (score.home == score.away) return StdColors.border24;
    if (score.home > score.away && weAtHome ||
        score.home < score.away && !weAtHome) return StdColors.red;
    return Grey.g68;
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: _colorByScore,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              score.getPercent(weAtHome),
              style: Get.textTheme.displaySmall
                  ?.copyWith(color: Colors.white, fontSize: radius / 2),
            ),
          ),
          FittedBox(
            child: Text(
              score.ui,
              style: Get.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              )
            )
          ),
        ],
      ),
    );
  }
}
