import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiarySendWidget extends StatelessWidget {
  const DiarySendWidget({Key? key}) : super(key: key);

  static const _green = Color(0xFF93CB92);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), Get.back);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: _green, width: 2),
            ),
          ),
          Container(
            width: 66,
            height: 66,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _green,
              border: Border.all(color: _green, width: 1),
            ),
          ),
          const Icon(Icons.check_rounded, size: 42, color: Colors.white),
        ],
      ),
    );
  }
}
