import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/my_tab_bar.dart';
import 'anthropometry_controller.dart';
import 'tabs/bmi/bmi_page.dart';
import 'tabs/fat_percentage/fat_percentage_page.dart';
import 'tabs/height/height_page.dart';
import 'tabs/weight/weight_page.dart';

class AnthropometryPage extends StatelessWidget {
  const AnthropometryPage({Key? key}) : super(key: key);

  static const _tabs = {
    'Рост': HeightPage(),
    'Вес': WeightPage(),
    '% жира': FatPercentagePage(),
    'ИМТ': BmiPage(),
  };

  @override
  Widget build(BuildContext context) {
    final c = Get.put(AnthropometryController())..getData();
    return WillPopScope(
      onWillPop: c.removeFilters,
      child: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Grey.g68,
                size: 16,
              ),
            ),
            title: const Text('Антропометрия'),
            titleTextStyle: Get.textTheme.displaySmall?.apply(color: Grey.g68),
            elevation: 0,
            toolbarHeight: 46,
            bottom: MyTabBar(_tabs.keys.toList(), isBottom: true),
          ),
          body: Obx(() => c.player.value == null
              ? const Center(child: CircularProgressIndicator.adaptive())
              : TabBarView(children: _tabs.values.toList())),
        ),
      ),
    );
  }
}
