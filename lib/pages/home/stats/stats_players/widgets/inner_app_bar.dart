import 'package:flutter/material.dart';

import 'standard_dropdown_button.dart';

class InnerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const InnerAppBar({Key? key}) : super(key: key);

  static const _height = 60.0;

  @override
  Size get preferredSize => const Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 0,
      titleSpacing: 0,
      toolbarHeight: _height,
      title: const StandardDropdownButton(),
    );
  }
}
