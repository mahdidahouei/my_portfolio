import 'dart:js' as js;

void launchUrl(String url) {
  js.context.callMethod("launchUrl", [url]);
}
