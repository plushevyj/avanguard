import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../customization/std_colors.dart';
import '../model/content.dart';

class ContentWidget extends StatelessWidget {
  final Content material;

  const ContentWidget(this.material, {Key? key}) : super(key: key);

  Future<void> _download(String? url) async {
    if (url == null) {
      Get.showSnackbar(
        const GetSnackBar(message: 'Отсутствует ссылка на материал'),
      );
    } else {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _download(material.storage?.link);
      },
      child: Container(
        padding: const EdgeInsets.all(Indents.internal),
        margin: const EdgeInsets.only(bottom: Indents.x),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.16),
              offset: const Offset(0, 1),
              blurRadius: 5,
            ),
            const BoxShadow(color: Colors.white),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.link,
                  size: 20,
                  color: StdColors.border42,
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    material.name,
                    style: Get.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.5),
            Text(
              DateFormat.yMd('ru').format(DateTime.parse(material.createdAt)),
              style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
            ),
            const SizedBox(height: 8),
            if (material.tags != null)
              Wrap(
                children: material.tags!
                    .map((e) => Chip(label: Text(e.name)))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
