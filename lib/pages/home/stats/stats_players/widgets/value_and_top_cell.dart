import 'package:flutter/material.dart';

import 'top5widget.dart';

class ValueAndTopCell extends StatelessWidget {
  final dynamic e; // NumberAndTop5, StringAndTop5

  const ValueAndTopCell(this.e, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(e?.value.toString() ?? '-'),
        if ((e?.topFive == null || !e!.topFive!) &&
            (e?.topFiveBackwards == null || !e!.topFiveBackwards!))
          const SizedBox(width: 12),
          const SizedBox(width: 12),
        if (e?.topFive != null && e!.topFive!) const Top5Widget(isTop: true),
        if (e?.topFiveBackwards != null && e!.topFiveBackwards!)
          const Top5Widget(isTop: false),
      ],
    );
  }
}
