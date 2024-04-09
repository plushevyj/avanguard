import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../../customization/pics.dart';
import '../../../../../../../customization/std_colors.dart';
import '../model/faceoff.dart';

class TeamsHeaderFaceoffWidget extends StatelessWidget {
  final Faceoff faceoff;

  const TeamsHeaderFaceoffWidget(this.faceoff, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              faceoff.homeTeamLogo.isNotEmpty
                  ? Image.network(
                      faceoff.homeTeamLogo,
                      width: 36,
                      height: 36,
                    )
                  : SvgPicture.asset(Pics.logo, width: 36, height: 36),
              Text(
                faceoff.homeTeamName,
                style: Get.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              '${faceoff.home}',
              style: Get.textTheme.displayLarge
                  ?.apply(color: faceoff.home > faceoff.away ? null : Grey.g54),
            ),
            Text(' - ', style: Get.textTheme.bodyLarge),
            Text(
              '${faceoff.away}',
              style: Get.textTheme.displayLarge
                  ?.apply(color: faceoff.home < faceoff.away ? null : Grey.g54),
            ),
          ],
        ),
        Expanded(
          child: Column(
            children: [
              faceoff.awayTeamLogo.isNotEmpty
                  ? Image.network(
                      faceoff.awayTeamLogo,
                      width: 36,
                      height: 36,
                    )
                  : Image.asset(Pics.hockeyStick, width: 36, height: 36),
              Text(
                faceoff.awayTeamName,
                style: Get.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
