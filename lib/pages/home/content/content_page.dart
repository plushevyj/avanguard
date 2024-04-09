import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';
import '../../../widgets/my_tab_bar.dart';
import 'category/category_page.dart';
import 'content_controller.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  static const route = '/content';

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ContentController())..init();
    return Obx(
      () => c.tabs.value == null
          ? const Center(child: CircularProgressIndicator.adaptive())
          : DefaultTabController(
              length: c.tabs.value!.length,
              child: Scaffold(
                appBar: AppBar(
                  elevation: 1,
                  leadingWidth: 0,
                  toolbarHeight: 46,
                  title: MyTabBar(
                    c.tabs.value!.map((e) => e.name).toList(),
                    onTap: (i) => c.getContent(i: i),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.only(
                    left: Indents.x,
                    top: Indents.x,
                    right: Indents.x,
                  ),
                  child: c.isLoading.isTrue
                      ? const Center(child: CircularProgressIndicator.adaptive())
                      : CategoryPage(c.sections.value!),
                ),
              ),
            ),
    );
  }
}
