import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StandardDropdownButton extends StatelessWidget {
  const StandardDropdownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const value = 'Ср. значение за сезон 20-21';
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          // constraints: BoxConstraints(
          //   maxHeight: 40,
          // ),
          labelText: 'Эталон',
        ),
        // isDense: false,
        // isDense: true,
        style: Get.textTheme.bodyLarge,
        items: const [
          DropdownMenuItem(value: value, child: Text(value)),
        ],
        onChanged: (_) {},
      ),
    );
  }
}
