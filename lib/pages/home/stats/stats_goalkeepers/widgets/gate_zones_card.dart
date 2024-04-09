import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/pics.dart';
import '../../../../../customization/std_colors.dart';
import 'gate_zones_stat.dart';

class GateZonesCard extends StatelessWidget {
  final dynamic c;

  const GateZonesCard(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Indents.x),
      decoration: StdDecor.card,
      child: Column(
        children: [
          const GateZonesTitle(),
          const SizedBox(height: Indents.y),
          OrientationBuilder(
            builder: (ctx, orientation) {
              final x = Get.width - Indents.x * 4;
              final y = x * .62;
              return Container(
                width: x,
                height: y,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Pics.gateZones),
                    fit: BoxFit.fill,
                    opacity: .5,
                  ),
                ),
                child: GateZonesData(c),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GateZonesData extends StatelessWidget {
  final dynamic c;

  const GateZonesData(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final data = c.stats.value?.gatesMap;
        return data == null
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GateZonesStat(data.topLeft),
                      GateZonesStat(data.topMid),
                      GateZonesStat(data.topRight),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GateZonesStat(data.midLeft),
                      GateZonesStat(data.center),
                      GateZonesStat(data.midRight),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GateZonesStat(data.botLeft),
                      GateZonesStat(data.botMid),
                      GateZonesStat(data.botRight),
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
              );
      },
    );
  }
}

class GateZonesTitle extends StatelessWidget {
  const GateZonesTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text('Зоны ворот', style: Get.textTheme.displayMedium),
        ),
        const SizedBox(width: 32),
        // todo add XG when back is ready
      ],
    );
  }
}
