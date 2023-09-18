import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/assets/icons.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/global/utils/url_launcher.dart';
import 'package:my_portfolio/src/ui/global/widgets/social_icon_button.dart';
import 'package:my_portfolio/src/websites.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.mySkills,
          style: themeData.textTheme.displaySmall,
        ),
        kSpaceL,
        kSpaceL,
        Wrap(
          children: [
            SocialIconButton(
              icon: const FlutterLogo(),
              name: localizations.flutter,
              onTap: () {
                launch(flutterSite);
              },
            ),
            SocialIconButton(
              icon: Image.asset(MyPngIcons.dart),
              name: localizations.dart,
              onTap: () {
                launch(dartSite);
              },
            ),
            SocialIconButton(
              icon: Image.asset(MyPngIcons.bloc),
              name: localizations.bloc,
              onTap: () {
                launch(blocSite);
              },
            ),
            SocialIconButton(
              icon: Image.asset(MyPngIcons.git),
              name: localizations.git,
              onTap: () {
                launch(gitSite);
              },
            ),
            SocialIconButton(
              icon: Image.asset(MyPngIcons.android),
              name: localizations.android,
              onTap: () {
                launch(androidDevelopersSite);
              },
            ),
          ],
        ),
      ],
    );
  }
}
