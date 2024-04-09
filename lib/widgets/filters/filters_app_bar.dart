import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../customization/std_colors.dart';

class FiltersAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onTap;

  const FiltersAppBar({this.onTap, Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(44);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      leading: IconButton(
        onPressed: () {
          if (onTap != null) onTap!();
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black.withOpacity(.4),
          size: 16,
        ),
      ),
      centerTitle: true,
      title: Text(
        'Фильтры',
        style: Get.textTheme.bodyLarge?.apply(color: Grey.g68),
      ),
    );
  }
}
