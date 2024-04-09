import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  final String? url;
  final bool isFullscreen;

  const WebviewPage(this.url, {this.isFullscreen = true, Key? key})
      : super(key: key);

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  late final WebViewController controller;
  late final String html;

  @override
  void initState() {
    // Set the orientation to landscape
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);

    html = '''
  <html>
    <body>
      <video controls autoplay playsinline style="width:100%;height:100%;">
        <source src="${widget.url}">
      </video>
    </body>
  </html>
  ''';

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      // ..loadHtmlString(html);
      ..loadRequest(Uri.parse(widget.url ?? 'URL is null'));

    super.initState();
  }

  @override
  void dispose() {
    // Reset the orientation to the default (portrait)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.isFullscreen
      ? Scaffold(
          appBar: AppBar(),
          body: WebViewWidget(controller: controller),
        )
      : AspectRatio(
          aspectRatio: 304 / 228,
          child: WebViewWidget(controller: controller),
        );
}
