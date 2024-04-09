import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../pages/home/content/webview_page.dart';
import '../../domain/entity/video_fragment_link.dart';
import '../controller/video_fragment_controller.dart';
import 'widgets/video_fragment_header_widget.dart';
import 'widgets/video_fragment_info_widget.dart';

class VideoFragmentWidget extends StatelessWidget {
  final VideoFragmentLink link;

  const VideoFragmentWidget(this.link, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.put(VideoFragmentController()).init(link);
        showDialog(
          context: context,
          builder: (_) => const VideoFragmentDialog(),
        );
      },
      child: Text(
        '\nСмотреть видео\n',
        style: Get.textTheme.labelLarge?.apply(color: Colors.white),
      ),
    );
  }
}

class VideoFragmentDialog extends StatelessWidget {
  const VideoFragmentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final link = Get.find<VideoFragmentController>().link;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: Indents.internal),
      // no effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(Indents.internal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoFragmentHeaderWidget(),
              // Gap(Indents.y),
              const VideoFragmentInfoWidget(),
              const Gap(Indents.y),
              // Image.asset(
              //   Pics.videoFragment,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              DecoratedBox(
                // no effect
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: WebviewPage(link.uri, isFullscreen: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
