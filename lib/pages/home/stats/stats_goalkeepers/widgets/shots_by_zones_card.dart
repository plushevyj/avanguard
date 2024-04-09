import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../customization/pics.dart';
import '../../../../../customization/std_colors.dart';
import 'gate_zones_stat.dart';

class ShotsByZonesCard extends StatelessWidget {
  final dynamic c;

  const ShotsByZonesCard(this.c, {Key? key}) : super(key: key);

  static const _coef = 283 / 328;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final shots = c.stats.value?.shotsByZones;
        return shots == null
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Container(
                padding: const EdgeInsets.all(Indents.x),
                decoration: StdDecor.card,
                child: Column(
                  children: [
                    Text('Броски по зонам', style: Get.textTheme.displayMedium),
                    const SizedBox(height: Indents.y),
                    OrientationBuilder(
                      builder: (ctx, orientation) {
                        final x = Get.width - Indents.x * 4;
                        final y = x * _coef;
                        return Stack(
                          children: [
                            Opacity(
                              opacity: .5,
                              child: SvgPicture.asset(Pics.zoneShots, width: x),
                            ),
                            SizedBox(
                              width: x,
                              height: y,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GateZonesStat(shots.leftMidZone),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: Indents.x * 2,
                                        ),
                                        child: GateZonesStat(shots.midZone),
                                      ),
                                      GateZonesStat(shots.rightMidZone),
                                    ],
                                  ).paddingOnly(bottom: Indents.y),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GateZonesStat(shots.leftBotZone),
                                      GateZonesStat(shots.midBotZone),
                                      GateZonesStat(shots.rightBotZone),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
      },
    );
  }
}
