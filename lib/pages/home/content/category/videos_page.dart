import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../content_controller.dart';
import '../widgets/video_widget.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ContentController());
    final section =
        c.sections.value!.firstWhere((e) => e.slug == ContentController.videos);
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
        itemBuilder: (ctx, i) => VideoWidget(section.materials[i]),
      ),
    );
  }
}
