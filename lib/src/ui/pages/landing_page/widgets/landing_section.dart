import 'dart:math';

import 'package:flutter/material.dart';

import '../../../global/utils/constants.dart';
import '../../../global/widgets/fade_sides.dart';
import '../../../global/widgets/parallax.dart';

class LandingSection extends StatelessWidget {
  const LandingSection({
    Key? key,
    required this.content,
    required this.imageAssetSrc,
    this.imageFirst = false,
  }) : super(key: key);

  final Widget content;
  final String imageAssetSrc;
  final bool imageFirst;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    const determinantWidth = 985.0;

    final shouldBeVertical = mediaQueryData.size.width <= determinantWidth;

    Widget buildContent() {
      return Padding(
        padding: kPagesPadding,
        child: SizedBox(
          width: max(mediaQueryData.size.width * 0.45, determinantWidth * 0.45),
          child: content,
        ),
      );
    }

    Widget buildImage() {
      return FadeSide(
        start: !imageFirst && !shouldBeVertical,
        end: imageFirst && !shouldBeVertical,
        child: ParallaxAssetImage(
          imageAssetSrc,
          aspectRatio: shouldBeVertical ? 3 / 2 : 5 / 4,
          imageAspectRatio: shouldBeVertical ? 2 / 3 : 9 / 16,
        ),
      );
    }

    if (shouldBeVertical) {
      return Column(
        children: [
          buildContent(),
          buildImage(),
        ],
      );
    } else {
      return Row(
        children: [
          if (imageFirst) Expanded(child: buildImage()),
          buildContent(),
          if (!imageFirst) Expanded(child: buildImage()),
        ],
      );
    }
  }
}
