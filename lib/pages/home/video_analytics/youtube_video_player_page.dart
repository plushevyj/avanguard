import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../core/utils/video_utils.dart';

class YoutubeVideoPlayerPage extends StatefulWidget {
  final String? link;

  const YoutubeVideoPlayerPage(this.link, {Key? key}) : super(key: key);

  @override
  State<YoutubeVideoPlayerPage> createState() => _YoutubeVideoPlayerPageState();
}

class _YoutubeVideoPlayerPageState extends State<YoutubeVideoPlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId:
          VideoUtils.urlToId(widget.link ?? 'Link is null') ?? 'Fail to parse',
      autoPlay: true,
      params: const YoutubePlayerParams(),
    );
    Future.delayed(const Duration(milliseconds: 100), () {
      _controller.enterFullScreen(); // work only with delay
    });
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      autoFullScreen: true,
      controller: _controller,
      builder: (context, player) => Scaffold(appBar: AppBar(), body: player),
    );
  }
}
