import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ApplyButton({this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          if (onTap != null) onTap!();
          Get.back();
        },
        child: const Text('Применить'),
      ),
    );
  }
}
