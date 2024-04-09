import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../content_controller.dart';
import '../widgets/content_widget.dart';

class FilesPage extends StatelessWidget {
  const FilesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ContentController());
    final section =
        c.sections.value!.firstWhere((e) => e.slug == ContentController.files);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => c.getContent().then((_) => Get.back()),
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        ),
        title: Text(section.name, style: const TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(Indents.internal),
        itemCount: section.materials.length,
        itemBuilder: (ctx, i) => ContentWidget(section.materials[i]),
      ),
    );
  }
}
