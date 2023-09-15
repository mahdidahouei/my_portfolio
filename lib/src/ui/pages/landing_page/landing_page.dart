import 'package:flutter/material.dart';

import '../../global/assets/images.dart';
import '../../global/widgets/my_scaffold.dart';
import 'widgets/description.dart';
import 'widgets/introduction_section.dart';
import 'widgets/landing_section.dart';
import 'widgets/main_footer.dart';
import 'widgets/main_header.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      appBar: MainHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LandingSection(
              content: IntroductionSection(),
              imageAssetSrc: Images.flutterCode,
            ),
            LandingSection(
              content: Description(),
              imageFirst: true,
              imageAssetSrc: Images.myPicture2,
            ),
            LandingSection(
              content: IntroductionSection(),
              imageAssetSrc: Images.myPicture1,
            ),
            LandingSection(
              content: Description(),
              imageFirst: true,
              imageAssetSrc: Images.piano,
            ),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
