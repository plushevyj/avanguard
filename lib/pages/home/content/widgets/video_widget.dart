import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/video_preview.dart';
import '../model/content.dart';
import '../webview_page.dart';

class VideoWidget extends StatelessWidget {
  final Content material;

  const VideoWidget(this.material, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => material.link == null
          ? {}
          : Get.to(() => WebviewPage(material.link!)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VideoPreview(),
          const SizedBox(height: Indents.x / 2),
          Text(material.name),
          const SizedBox(height: Indents.x / 2),
          Text(
            DateFormat.yMd('ru').format(DateTime.parse(material.createdAt)),
            style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
          ),
          const SizedBox(height: Indents.x / 2),
          if (material.tags != null)
            Wrap(
              children:
                  material.tags!.map((e) => Chip(label: Text(e.name))).toList(),
            ),
          const SizedBox(height: Indents.x),
        ],
      ),
    );
  }
}
