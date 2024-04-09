import 'package:flutter/material.dart';

import '../customization/std_colors.dart';

class FilterChipWidget extends StatelessWidget {
  final Widget? label;
  final Function(bool) onSelected;
  final bool isSelected;
  final String? text;

  const FilterChipWidget({
    required this.onSelected,
    required this.isSelected,
    this.label,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      disabledColor: StdColors.border12,
      selectedColor: Colors.black,
      selected: isSelected,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      showCheckmark: false,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontSize: 13,
      ),
      label: text == null
          ? label ?? const SizedBox()
          : Text(
              text!,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 13,
              ),
            ),
    );
  }
}
