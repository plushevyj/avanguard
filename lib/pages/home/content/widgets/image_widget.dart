import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../model/content.dart';
import 'content_tag_widget.dart';

class ImageWidget extends StatelessWidget {
  final Content material;

  const ImageWidget(this.material, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: StdColors.border12),
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          material.link == null
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: StdColors.blue,
                  ),
                  // formula must be correct without - 2, i don't know where i fucked up
                  width: (Get.width - Indents.x * 3) / 2 - 2,
                  height: 144,
                )
              : Image.network(material.link!),
          Padding(
            padding: const EdgeInsets.all(Indents.internal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  material.name,
                  style: Get.textTheme.bodyMedium,
                ),
                const SizedBox(height: Indents.internal / 3),
                Text(
                  DateFormat.yMd('ru').format(
                    DateTime.parse(material.createdAt),
                  ),
                  style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
                ),
                if (material.tags != null && material.tags!.isNotEmpty) ...[
                  const SizedBox(height: Indents.internal),
                  Wrap(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: Indents.internal,
                    children: material.tags!
                        .map((e) => ContentTagWidget(e.name))
                        .toList(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
