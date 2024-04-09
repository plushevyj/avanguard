import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamWidget extends StatelessWidget {
  final String name;
  final String? url;

  const TeamWidget({required this.name, this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          if (url != null)
            SizedBox(
              width: 48,
              height: 42,
              child: Image.network(url!),
            ),
          const SizedBox(height: 4),
          Text(
            name,
            style: Get.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ).paddingSymmetric(horizontal: 12),
    );
  }
}
