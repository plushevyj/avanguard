import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../../auth/auth_controller.dart';
import '../model/videos.dart';
import '../repository/video_repository.dart';

class VideoController extends GetxController {
  final groupId = Get.find<AuthController>().account.value?.group?.id;
  final tags = <Tag>[].obs;
  List<String> _tags = [];
  final tagsController = MultiSelectController();
  static const repository = VideoRepository();
  final pagingController =
      PagingController<int, VideoAnalytics>(firstPageKey: 1);

  void init() {
    getTags();
    // ignore: avoid-passing-async-when-sync-expected
    pagingController.addPageRequestListener(getVideos);
  }

  Future<void> getTags() async => tags.value = await repository.getTags();

  void filterByTags(List indexes) {
    _tags = indexes.map((i) => tags[i].slug).toList();
    pagingController.refresh();
  }

  Future<void> getVideos(int page) async {
    final newItems =
        (await repository.getVideos(page: page, tags: _tags)).videoAnalytics;
    newItems.length != VideoRepository.limit
        ? pagingController.appendLastPage(newItems)
        : pagingController.appendPage(newItems, ++page);
  }
}
