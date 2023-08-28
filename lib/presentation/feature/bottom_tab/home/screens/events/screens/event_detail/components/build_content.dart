import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BuildEventDetailContent extends StatelessWidget {
  const BuildEventDetailContent({
    super.key,
    required this.content,
  });

  final String content;

  void openWebUrl(String? url) async {
    if (url == null) return;
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Html(
      data: content,
      style: <String, Style>{
        "body": Style(
          margin: const EdgeInsets.all(16.0),
          color: context.colors.textPrimary,
        )
      },
      onLinkTap: (String? url, context, attributes, element) {
        openWebUrl(url);
      },
    );
  }
}
