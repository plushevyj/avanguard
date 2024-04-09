import 'package:flutter/material.dart';

import '../model/number_and_percent.dart';
import 'percent_bar_widget.dart';

class ValueAndPercentCell extends StatelessWidget {
  final NumberAndPercent? e;
  @Deprecated('should be removed after couple commits')
  final bool oneIsMax;

  const ValueAndPercentCell(this.e, {this.oneIsMax = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Text(e?.value.toString() ?? '-'),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        e == null
            ? const SizedBox(height: 6)
            : PercentBarWidget(e!.percent, oneIsMax: oneIsMax),
      ],
    );
  }
}
