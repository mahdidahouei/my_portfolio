import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/url_launcher.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    Key? key,
    this.url,
    required this.imageAssetSrc,
    required this.name,
    this.onTap,
    this.tooltip,
  }) : super(key: key);

  final String? url;
  final VoidCallback? onTap;
  final String imageAssetSrc;
  final String name;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    Widget buildIconButton() {
      return InkWell(
        borderRadius: kMyBorderRadius,
        onTap: onTap ??
            () {
              if (url != null) {
                launch(url!);
              }
            },
        child: SizedBox(
          height: 116.0,
          width: 116.0,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  imageAssetSrc,
                  fit: BoxFit.contain,
                  height: 44.0,
                  width: 44.0,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FittedBox(
                    child: Text(
                      name,
                      style: themeData.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    if (tooltip != null && tooltip!.trim().isNotEmpty) {
      return Tooltip(
        message: tooltip,
        child: buildIconButton(),
      );
    }
    return buildIconButton();
  }
}
