import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_gf_multi_select.dart';

class MultiSelect extends StatelessWidget {
  final List items;
  final MultiSelectController controller;
  final String labelText;
  final Function(List) onSelect;
  final List<int>? initialSelected;
  final bool enabled;
  final bool isCategorized;

  const MultiSelect(
    this.items, {
    required this.controller,
    required this.labelText,
    required this.onSelect,
    this.initialSelected,
    this.enabled = true,
    this.isCategorized = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        enabled: enabled,
        border: const OutlineInputBorder(gapPadding: 3),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelText: labelText,
      ),
      child: MyGFMultiSelect(
        c: controller,
        initialSelectedItemsIndex: initialSelected,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        dropdownTitleTilePadding: EdgeInsets.zero,
        dropdownTitleTileMargin: EdgeInsets.zero,
        dropdownTitleTileHintText: labelText,
        dropdownTitleTileHintTextStyle: Get.textTheme.bodyLarge!,
        size: 12,
        dropdownButton: const SizedBox(),
        dropdownUnderlineBorder: BorderSide.none,
        collapsedIcon: const Icon(Icons.arrow_drop_up_outlined),
        expandedIcon: const Icon(Icons.arrow_drop_down_outlined),
        items: items,
        onSelect: onSelect,
        isTag: true,
        isCategorized: isCategorized,
      ),
    );
  }
}
