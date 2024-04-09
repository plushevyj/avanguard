import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/convert_to.dart';
import '../../../../core/http/request_handler.dart';
import '../model/content.dart';
import '../model/content_tab.dart';

class ContentRepository {
  const ContentRepository();

  static final _http = GetIt.I.get<Dio>();

  static const _fileAndLinksLimit = 3;
  static const _imagesLimit = 4;
  static const _videosLimit = 3;

  Future<List<ContentTab>> getTabs() async {
    const path = '/api/v1/material/tabs';
    final res = await handleRequest(() => _http.get(path));
    final tabs =
        await ConvertTo.list<ContentTab>(res.data, ContentTab.fromJson);
    // когда/если видеоаналитику уберут из списка табов,
    // можно будет просто передавать список
    return tabs.take(tabs.length - 1).toList()
      ..insert(0, const ContentTab(name: 'Все', slug: 'All'));
  }

  Future<List<Section>> getContent(
    String? tab, {
    int? fileAndLinksLimit,
    int? imagesLimit,
    int? videosLimit,
  }) async {
    const path = '/api/v1/material';
    final q = <String, dynamic>{
      'fileAndLinksLimit': fileAndLinksLimit ?? _fileAndLinksLimit,
      'imagesLimit': imagesLimit ?? _imagesLimit,
      'videosLimit': videosLimit ?? _videosLimit,
    };
    if (tab != null) q['category'] = tab;
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<Section>(res.data, Section.fromJson);
    // log(res.data.toString());
  }
}
