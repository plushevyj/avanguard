import 'package:get/get.dart';

import '../../auth/auth_controller.dart';
import 'category/files_page.dart';
import 'category/images_page.dart';
import 'category/videos_page.dart';
import 'model/content.dart';
import 'model/content_tab.dart';
import 'repository/content_repository.dart';

class ContentController extends GetxController {
  static const repository = ContentRepository();
  final tabs = Rxn<List<ContentTab>>();
  final sections = Rxn<List<Section>>();
  final isLoading = true.obs;
  var _tabIndex = 0;
  static const _maxLimit = 1000;
  final _player = Get.find<AuthController>().account.value!;

  Future<void> init() async {
    await getTabs();
    await getContent(i: _tabIndex);
    // showNotification();
  }

  Future<void> getTabs() async => tabs.value = await repository.getTabs();

  Future<void> getContent({
    int? i,
    int? fileAndLinksLimit,
    int? imagesLimit,
    int? videosLimit,
  }) async {
    isLoading.value = true;
    if (i != null) _tabIndex = i;
    final tab = _tabIndex < 1 ? null : tabs.value?[_tabIndex].slug;
    sections.value = await repository.getContent(
      tab,
      fileAndLinksLimit: fileAndLinksLimit,
      imagesLimit: imagesLimit,
      videosLimit: videosLimit,
    );
    isLoading.value = false;
  }

  static const files = 'links_and_files';
  static const images = 'images';
  static const videos = 'video';

  void showAll(Section section) async {
    switch (section.slug) {
      case files:
        await getContent(fileAndLinksLimit: _maxLimit);
        Get.to(() => const FilesPage());
        break;
      case images:
        await getContent(imagesLimit: _maxLimit);
        Get.to(() => const ImagesPage());
        break;
      case videos:
        await getContent(videosLimit: _maxLimit);
        Get.to(() => const VideosPage());
        break;
    }
  }
}
