import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';

const _colors = {
  'Учеба': Color(0xFFFFE194),
  'Психология': Color(0xFFD6B1DF),
  'Нутрициология': Color(0xFF81C280),
  'Медицина': Color(0xFF89A9D9),
  'Спорт': Color(0xFFD99493),
  'Прочее': StdColors.border24,
};

class ContentTagWidget extends StatelessWidget {
  final String tag;

  const ContentTagWidget(this.tag, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: StdColors.border12),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: _colors[tag],
          //   ),
          //   width: 8,
          //   height: 8,
          // ),
          // const SizedBox(width: 6),
          Text(tag, style: Get.textTheme.titleSmall),
        ],
      ),
    );
  }
}
