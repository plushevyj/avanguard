import 'package:flutter/material.dart';

import '../../customization/std_colors.dart';

class TagTile extends StatelessWidget {
  final Function(bool value) onChanged;
  final bool selected;
  final Widget title;
  final bool value;

  const TagTile({
    required this.onChanged,
    required this.selected,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Container(
        color: selected ? StdColors.primary.withOpacity(.1) : null,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        child: title,
      ),
    );
  }
}
