

// class VideoPlayerWidget extends StatefulWidget {
//   const VideoPlayerWidget({super.key});
//
//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }
//
// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   // late YoutubePlayerController _controller;
//   //
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _controller = YoutubePlayerController.fromVideoId(
//   //     videoId:
//   //     VideoUtils.urlToId(widget.link ?? 'Link is null') ?? 'Fail to parse',
//   //     autoPlay: true,
//   //     params: const YoutubePlayerParams(),
//   //   );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     final c = Get.find<VideoFragmentController>();
//     return YoutubePlayer(controller: c.controller);
//   }
// }
