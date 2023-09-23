import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/url_launcher.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    Key? key,
    this.url,
    this.imageAssetSrc,
    this.icon,
    required this.text,
    this.onTap,
    this.tooltip,
    this.imageColor,
    this.textColor,
  })  : assert((imageAssetSrc == null && icon != null) ||
            (imageAssetSrc != null && icon == null)),
        super(key: key);

  final String? url;
  final VoidCallback? onTap;
  final String? imageAssetSrc;
  final Widget? icon;
  final String text;
  final String? tooltip;
  final Color? imageColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    Widget buildIconButton() {
      return Material(
        borderRadius: kMyBorderRadius,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: kMyBorderRadius,
          onTap: onTap ??
              () {
                if (url != null) {
                  launch(url!);
                }
              },
          child: SizedBox(
            height: 100.0,
            width: 100.0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 44.0,
                    width: 44.0,
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
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: FittedBox(
                      child: Text(
                        text,
                        style: themeData.textTheme.labelLarge!.apply(
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
