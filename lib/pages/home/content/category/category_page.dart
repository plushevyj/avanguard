import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../content_controller.dart';
import '../model/content.dart';
import '../widgets/content_widget.dart';
import '../widgets/image_widget.dart';
import '../widgets/video_widget.dart';

class CategoryPage extends StatelessWidget {
  final List<Section> sections;

  const CategoryPage(this.sections, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: sections.map((section) => SectionWidget(section)).toList(),
        ),
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final Section section;

  const SectionWidget(this.section, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ContentController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(section.name, style: Get.textTheme.displayMedium),
            if (section.materials.isNotEmpty)
              TextButton(
                onPressed: () => c.showAll(section),
                child: const Text('Показать все'),
              ),
          ],
        ),
        if (section.materials.isEmpty) ...[
          const SizedBox(height: Indents.internal),
          const Text('Материалы еще не добавлены'),
        ],
        const SizedBox(height: Indents.y),
        if (section.slug == ContentController.files)
          ...section.materials.map((e) => ContentWidget(e)).toList(),
        if (section.slug == ContentController.images)
          Wrap(
            spacing: Indents.x,
            runSpacing: 12,
            children: List.generate(
              section.materials.length,
              (i) => ImageWidget(section.materials[i]),
            ),
          ),
        if (section.slug == ContentController.videos)
          ...section.materials.map((e) => VideoWidget(e)).toList(),
      ],
    );
  }
}
