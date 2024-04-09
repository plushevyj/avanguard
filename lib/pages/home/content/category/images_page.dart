import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../content_controller.dart';
import '../widgets/image_widget.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ContentController());
    final section =
        c.sections.value!.firstWhere((e) => e.slug == ContentController.images);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => c.getContent().then((_) => Get.back()),
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        ),
        title: Text(section.name, style: const TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Indents.internal),
        child: Wrap(
          spacing: Indents.x,
          runSpacing: 12,
          children: List.generate(
            section.materials.length,
            (i) => ImageWidget(section.materials[i]),
          ),
        ),
      ),
    );
  }
}
