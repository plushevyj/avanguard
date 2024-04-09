import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';

class VideoFragmentHeaderWidget extends StatelessWidget {
  const VideoFragmentHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: Text('Анкета. Утро', style: Inter.h1)),
        IconButton(
          onPressed: Get.back,
          icon: Icon(
            Icons.close_rounded,
            color: Colors.black.withOpacity(.54),
          ),
        ),
      ],
    );
  }
}
