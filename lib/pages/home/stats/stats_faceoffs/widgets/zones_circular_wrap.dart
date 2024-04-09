import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/std_error.dart';
import '../../../../../widgets/std_loader.dart';
import 'faceoffs_playground/bloc/faceoffs_playground_bloc.dart';
import 'zone_circular/zone_circular_widget.dart';

class ZonesCircularWrap extends StatelessWidget {
  const ZonesCircularWrap({super.key});

  static const _names = ['зона атаки', 'зона защиты', 'Средняя зона'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaceoffsPlaygroundBloc, FaceoffsPlaygroundState>(
      builder: (context, state) => switch (state) {
        FaceoffsPlaygroundInitial() => const StdLoader(),
        FaceoffsPlaygroundGot(data: final data) => Column(
            children: [
              if (data.zones case [var attack, var defense, var middle]) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ZoneCircularWidget(
                      title: _names[0],
                      home: attack.home?.toInt() ?? -1,
                      away: attack.away?.toInt() ?? -1,
                      percent: attack.percent?.toInt() ?? -1,
                      weAtHome: data.weAtHome,
                    ),
                    ZoneCircularWidget(
                      title: _names[1],
                      home: defense.home?.toInt() ?? -1,
                      away: defense.away?.toInt() ?? -1,
                      percent: defense.percent?.toInt() ?? -1,
                      weAtHome: data.weAtHome,
                    ),
                  ],
                ),
                ZoneCircularWidget(
                  title: _names[2],
                  home: middle.home?.toInt() ?? -1,
                  away: middle.away?.toInt() ?? -1,
                  percent: middle.percent?.toInt() ?? -1,
                  weAtHome: data.weAtHome,
                ),
              ],
            ],
          ),
        FaceoffsPlaygroundError(error: final error) => StdError(error),
      },
    );
  }
}
