import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamCell extends StatelessWidget {
  final String name;
  final String logo;
  final RxBool isExpanded;
  final String? nextRival;

  const TeamCell({
    required this.name,
    required this.logo,
    required this.isExpanded,
    this.nextRival,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Image.network(logo, width: 20, height: 20),
          const SizedBox(width: 4),
          if (isExpanded.isTrue)
            Expanded(child: Text(name, style: Get.textTheme.bodySmall)),
          if (nextRival != null) _NextRival(nextRival!),
        ],
      ),
    );
  }
}

class _NextRival extends StatelessWidget {
  final String _matchDate;

  const _NextRival(String matchDate, {Key? key})
      : _matchDate = matchDate == '0000-00-00' ? '' : '\n$matchDate',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      triggerMode: TooltipTriggerMode.tap,
      preferBelow: false,
      message: 'Следующий соперник$_matchDate',
      child: const Icon(Icons.sports_hockey, size: 16),
    );
  }
}
