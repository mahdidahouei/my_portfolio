import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/pages/landing_page/widgets/main_header.dart';

import '../../global/assets/images.dart';
import '../../global/utils/constants.dart';
import '../../global/widgets/fade_sides.dart';
import '../../global/widgets/my_scaffold.dart';
import '../../global/widgets/parallax.dart';
import 'widgets/description.dart';
import 'widgets/introduction_section.dart';
import 'widgets/main_footer.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: const MainHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: kPagesPadding,
                  child: IntroductionSection(),
                ),
                Expanded(
                  child: FadeSide(
                    start: true,
                    child: ParallaxAssetImage(Images.flutterCode),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FadeSide(
                    end: true,
                    child: ParallaxAssetImage(Images.myPicture2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(64.0),
                  child: Description(),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(64.0),
                  child: IntroductionSection(),
                ),
                Expanded(
                  child: FadeSide(
                    start: true,
                    child: ParallaxAssetImage(Images.myPicture1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FadeSide(
                    end: true,
                    child: ParallaxAssetImage(Images.piano),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(64.0),
                  child: Description(),
                ),
              ],
            ),
            const MainFooter(),
          ],
        ),
      ),
    );
  }
}
