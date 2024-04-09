import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../match_picker_controller.dart';

class ChooseAllMatchesTile extends StatelessWidget {
  const ChooseAllMatchesTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return Obx(
      () => ListTile(
        onTap: c.chooseAll,
        leading: Checkbox(
          value: c.isAll.isTrue,
          onChanged: (_) => c.chooseAll(),
        ),
        title: const Text('Выбрать все'),
        titleTextStyle: Get.textTheme.bodyLarge?.apply(color: Colors.black),
      ),
    );
  }
}
