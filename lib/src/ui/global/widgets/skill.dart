import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/url_launcher.dart';

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
    this.url,
    this.imageAssetSrc,
    this.icon,
    required this.name,
    this.onTap,
    this.tooltip,
    this.imageColor,
  })  : assert((imageAssetSrc == null && icon != null) ||
            (imageAssetSrc != null && icon == null)),
        super(key: key);

  final String? url;
  final VoidCallback? onTap;
  final String? imageAssetSrc;
  final Widget? icon;
  final String name;
  final String? tooltip;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    Widget buildIconButton() {
      return Material(
        borderRadius: kMyBorderRadius,
        color: themeData.colorScheme.secondary,
        child: InkWell(
          borderRadius: kMyBorderRadius,
          onTap: onTap ??
              () {
                if (url != null) {
                  launch(url!);
                }
              },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 16.0,
                  width: 16.0,
                  child: FittedBox(
                    child: icon ??
                        Image.asset(
                          imageAssetSrc!,
                          fit: BoxFit.contain,
                          color: imageColor,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FittedBox(
                    child: Text(
                      name,
                      style: themeData.textTheme.labelLarge!
                          .apply(color: Colors.white),
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
