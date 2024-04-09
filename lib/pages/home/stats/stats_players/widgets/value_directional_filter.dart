import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class ValueDirectionalFilter extends StatelessWidget {
  const ValueDirectionalFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.arrow_downward,
      color: StdColors.border24,
      size: 16,
    );
  }
}
