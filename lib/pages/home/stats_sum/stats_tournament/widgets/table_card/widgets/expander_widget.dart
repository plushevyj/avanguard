import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../customization/std_colors.dart';

class ExpanderWidget extends StatelessWidget {
  final RxBool isExpanded;

  const ExpanderWidget(this.isExpanded, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: StdColors.primary.shade700,
      ),
      width: 18,
      height: 18,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: isExpanded.toggle,
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Icon(
            isExpanded.isTrue
                ? Icons.arrow_back_ios
                : Icons.arrow_forward_ios,
            size: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
