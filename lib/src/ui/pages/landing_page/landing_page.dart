import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';

import '../../global/assets/images.dart';
import '../../global/widgets/my_scaffold.dart';
import 'widgets/description.dart';
import 'widgets/i_care_section.dart';
import 'widgets/introduction_section.dart';
import 'widgets/landing_section.dart';
import 'widgets/main_footer.dart';
import 'widgets/main_header.dart';
import 'widgets/skills_section.dart';

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
            kSpaceL,
            LandingSection(
              content: Description(),
              imageFirst: true,
              imageAssetSrc: Images.myPicture2,
            ),
            kSpaceL,
            LandingSection(
              content: SkillsSection(),
              imageAssetSrc: Images.myPicture1,
            ),
            kSpaceL,
            LandingSection(
              content: ICareSection(),
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
