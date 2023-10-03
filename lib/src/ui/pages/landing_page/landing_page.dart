import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/widgets/my_floating_action_button.dart';
import 'package:my_portfolio/src/ui/pages/landing_page/widgets/landing_overview.dart';

import '../../../../portfolio_info.dart';
import '../../global/utils/url_launcher.dart';
import '../../global/widgets/my_scaffold.dart';
import 'widgets/main_header.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final mediaQueryData = MediaQuery.of(context);
    final appBar = MainHeader(
      showsTrailingButton: mediaQueryData.size.width > 500,
    );

    return MyScaffold(
      // appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar,
            LandingOverview(
              appBarHeight: appBar.preferredSize.height,
            ),
            // LandingSection(
            //   content: IntroductionSection(),
            //   imageAssetSrc: Images.flutterCode,
            // ),
            // kSpaceL,
            // LandingSection(
            //   content: Description(),
            //   imageFirst: true,
            //   imageAssetSrc: Images.myPicture2,
            // ),
            // kSpaceL,
            // LandingSection(
            //   content: SkillsSection(),
            //   imageAssetSrc: Images.myPicture1,
            // ),
            // kSpaceL,
            // LandingSection(
            //   content: ICareSection(),
            //   imageFirst: true,
            //   imageAssetSrc: Images.piano,
            // ),
            // MainFooter(),
          ],
        ),
      ),
      floatingActionButton: mediaQueryData.size.width > 500
          ? null
          : MyFloatingActionButton(
              label: localizations.requestProject,
              onPressed: () {
                launchEmail(myEmail);
              },
              child: const Icon(
                Icons.rocket_launch_rounded,
                color: Colors.white,
              ),
            ),
    );
  }
}
