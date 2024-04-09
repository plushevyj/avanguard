import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../customization/std_colors.dart';

class TagChip extends StatelessWidget {
  final String tag;
  final VoidCallback? onClose;
  final EdgeInsetsGeometry padding;
  final bool isCategorized;

  const TagChip(
    this.tag, {
    this.onClose,
    this.padding = const EdgeInsets.fromLTRB(10, 6, 6, 6),
    this.isCategorized = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: StdColors.border24),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
        padding: padding,
        child: Row(
          children: [
            Text(
              tag,
              style: Get.textTheme.bodyLarge,
            ),
            if (onClose != null) ...[
              const SizedBox(width: 8),
              InkWell(
                onTap: onClose,
                child: const Icon(
                  Icons.cancel,
                  color: StdColors.border42,
                  size: 20,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
