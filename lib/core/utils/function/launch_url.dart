import 'package:book/core/widgets/custom_error_widget.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showsnackbar(context, "can not launch");
    }
  }
}
