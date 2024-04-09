import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../domain/entity/video_fragment_link.dart';
import '../view/model/video_fragment_link_ui.dart';

class VideoFragmentController extends GetxController {
  late YoutubePlayerController controller;
  late VideoFragmentLinkUi link;

  void init(VideoFragmentLink link) {
    this.link = VideoFragmentLinkUi.fromEntity(link);
    print(
      '${("-" * 90)}\n'
          '${link.uri}\n'
          '${("-" * 99)}\n',
    );
    // this.link = '$link ?autoplay=1';
    // controller = YoutubePlayerController.fromVideoId(
    //   videoId:
    //   VideoUtils.urlToId(link ?? 'Link is null') ?? 'Fail to parse',
    //   autoPlay: true,
    //   params: const YoutubePlayerParams(),
    // );
  }
}
