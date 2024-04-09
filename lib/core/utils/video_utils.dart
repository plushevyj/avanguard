abstract class VideoUtils {
  static String? urlToId(String url, {bool trimWhitespaces = true}) {
    if (!url.contains('http') && (url.length == 11)) return url;
    if (trimWhitespaces) url = url.trim();

    for (final exp in [
      RegExp(
        r'^https://(?:www\.|m\.)?youtube\.com/watch\?v=([_\-a-zA-Z0-9]{11}).*$',
      ),
      RegExp(
        r'^https://(?:music\.)?youtube\.com/watch\?v=([_\-a-zA-Z0-9]{11}).*$',
      ),
      RegExp(
        r'^https://(?:www\.|m\.)?youtube\.com/shorts/([_\-a-zA-Z0-9]{11}).*$',
      ),
      RegExp(
        r'^https://(?:www\.|m\.)?youtube(?:-nocookie)?\.com/embed/([_\-a-zA-Z0-9]{11}).*$',
      ),
      RegExp(r'^https://youtu\.be/([_\-a-zA-Z0-9]{11}).*$'),
    ]) {
      Match? match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) return match.group(1);
    }

    return null;
  }

  static String toEmbeddedUrl(String originalUrl) {
    Uri uri = Uri.parse(originalUrl);
    String videoId = '';

    if (uri.host == 'www.youtube.com' || uri.host == 'youtube.com') {
      if (uri.path.startsWith('/live/')) {
        videoId = uri.pathSegments[1];
      } else if (uri.path.startsWith('/watch')) {
        videoId = uri.queryParameters['v'] ?? '';
      }
    } else if (uri.host == 'youtu.be') {
      videoId = uri.pathSegments[0];
    }

    return videoId.isNotEmpty ? 'https://www.youtube.com/embed/$videoId' : '';
  }
}