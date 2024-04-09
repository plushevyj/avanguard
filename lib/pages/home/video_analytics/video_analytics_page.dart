import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

import '../../../customization/std_colors.dart';
import '../../../widgets/filters/reset_text_button.dart';
import '../../../widgets/multi_select/multi_select.dart';
import '../../../widgets/multi_select/tag_chip.dart';
import '../../../widgets/video_preview.dart';
import 'controller/video_controller.dart';
import 'model/videos.dart';
import 'youtube_video_player_page.dart';

class VideoAnalyticsPage extends StatelessWidget {
  const VideoAnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(VideoController())..init();
    return Scaffold(
      body: GestureDetector(
        onTap: c.tagsController.collapse,
        child: Padding(
          padding: const EdgeInsets.only(
            left: Indents.x,
            top: Indents.y * 2,
            right: Indents.x,
          ),
          child: NestedScrollView(
                  headerSliverBuilder: (ctx, isInnerBoxScrolled) => [
                    SliverToBoxAdapter(
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MultiSelect(
                              c.tags.map((e) => e.name).toList(),
                              controller: c.tagsController,
                              labelText: 'Теги',
                              onSelect: c.filterByTags,
                            ),
                            if (c.tagsController.selectedTitles.isNotEmpty) ...[
                              const SizedBox(height: Indents.x),
                              ResetTextButton(onTap: c.tagsController.clear),
                            ],
                            const SizedBox(height: Indents.y),
                          ],
                        ),
                      ),
                    ),
                  ],
                  body: _VideoListView(c),
                ),
        ),
      ),
    );
  }
}

class _VideoListView extends StatelessWidget {
  final VideoController c;

  const _VideoListView(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(c.pagingController.refresh),
      child: PagedListView<int, VideoAnalytics>(
        padding: EdgeInsets.zero,
        pagingController: c.pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          noItemsFoundIndicatorBuilder: (_) => Center(
            child:
                Text('Видео не найдены', style: Get.textTheme.headlineMedium),
          ),
          itemBuilder: (_, video, i) => _Video(video),
        ),
      ),
    );
  }
}

class _Video extends StatelessWidget {
  final VideoAnalytics video;

  const _Video(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => YoutubeVideoPlayerPage(video.link)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VideoPreview(),
          const SizedBox(height: Indents.x / 2),
          Text(
            video.name,
            style: Get.textTheme.titleSmall,
          ),
          const SizedBox(height: Indents.x / 2),
          Text(
            DateFormat.yMd('ru').format(
              DateTime.parse(video.createdAt),
            ),
            style: Get.textTheme.bodyMedium,
          ),
          const SizedBox(height: Indents.x / 2),
          if (video.tag != null)
            TagChip(
              video.tag!.name,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 3,
              ),
            ),
          const SizedBox(height: Indents.x - 1),
        ],
      ),
    );
  }
}
