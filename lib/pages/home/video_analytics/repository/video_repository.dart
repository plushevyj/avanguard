import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/convert_to.dart';
import '../../../../core/http/request_handler.dart';
import '../../../auth/auth_controller.dart';
import '../model/videos.dart';

class VideoRepository {
  const VideoRepository();

  static final _http = GetIt.I.get<Dio>();

  static const int limit = 10;

  static final id = Get.find<AuthController>().account.value?.group?.id;

  Future<Videos> getVideos({
    required int page,
    required List<String> tags,
  }) async {
    const path = '/api/v1/video-analytics';
    final q = {
      'limit': limit,
      'page': page,
      for (var i = 0; i < tags.length; ++i) 'tags[$i]': tags[i],
      // 'tags': tags,
      // 'groups[]': [id],
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<Videos>(res.data, Videos.fromJson);
  }

  Future<List<Tag>> getTags() async {
    const path = '/api/v1/video-analytics/tags';
    final res = await handleRequest(() => _http.get(path));
    return ConvertTo.list<Tag>(res.data, Tag.fromJson);
  }
}
