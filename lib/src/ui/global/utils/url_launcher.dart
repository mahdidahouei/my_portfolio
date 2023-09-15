import 'package:url_launcher/url_launcher.dart';

void launch(String url) {
  // js.context.callMethod("launchUrl", [url]);
  launchUrl(
    Uri.parse(url),
    webOnlyWindowName: "_blank",
  );
}

void launchEmail(String email) {
  launchUrl(Uri.parse("mailto:$email"));
}
