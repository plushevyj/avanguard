import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../customization/std_colors.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> tabs;
  final bool isBottom;
  final Function(int)? onTap;
  final String? title;

  const MyTabBar(
    this.tabs, {
    this.isBottom = false,
    this.onTap,
    this.title,
    Key? key,
  })  : _titleY = title != null ? _defaultTitleY : 0,
        super(key: key);

  final double _titleY;

  static const _defaultY = 46.0;
  static const _defaultTitleY = 58.0;

  static const _padding = EdgeInsets.symmetric(horizontal: 10);

  @override
  Size get preferredSize => Size.fromHeight(_defaultY + _titleY / 2);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title!, style: Get.textTheme.displayMedium),
        TabBar(
          onTap: onTap,
          isScrollable: true,
          padding: isBottom
              ? const EdgeInsets.symmetric(horizontal: Indents.x)
              : EdgeInsets.zero,
          labelColor: StdColors.primary.shade700,
          labelPadding: _padding,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 16 / 13,
          ),
          indicatorPadding: _padding,
          unselectedLabelColor: Grey.g54,
          indicatorWeight: 2,
          tabs: tabs.map((tab) => Tab(text: tab)).toList(),
        ),
      ],
    );
  }
}
