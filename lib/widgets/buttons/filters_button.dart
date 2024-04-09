import 'package:flutter/material.dart';

import '../../customization/std_colors.dart';

class FiltersButton extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onTap;

  const FiltersButton({this.onTap, Key? key}) : super(key: key);


  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: StdColors.border24),
        backgroundColor: Colors.white,
        foregroundColor: Grey.g68,
      ),
      onPressed: onTap,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Фильтры'),
          SizedBox(width: 4.5),
          CircleAvatar(backgroundColor: StdColors.primary, radius: 2.5),
        ],
      ),
    );
  }
}
