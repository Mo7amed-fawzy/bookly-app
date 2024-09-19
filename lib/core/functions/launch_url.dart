// ignore_for_file: file_names

import 'package:flutercoursetwo/core/functions/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(BuildContext context, String? urlString) async {
  if (urlString != null) {
    Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      // بتاكد اذا كان ممكن افتح اللينك ولا لا
      await launchUrl(url);
    } else {
      // ignore: use_build_context_synchronously
      customSnackBar(context, 'Cannot Launch $url');
    }
  }
}
