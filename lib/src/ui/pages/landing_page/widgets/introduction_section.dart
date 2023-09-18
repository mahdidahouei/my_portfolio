import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/assets/icons.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/global/utils/url_launcher.dart';
import 'package:my_portfolio/src/ui/global/widgets/social_icon_button.dart';

import '../../../../../portfolio_info.dart';

class IntroductionSection extends StatefulWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  State<IntroductionSection> createState() => _IntroductionSectionState();
}

class _IntroductionSectionState extends State<IntroductionSection> {
  late AppLocalizations localizations;
  late ThemeData themeData;

  Widget _buildWelcome() {
    return SelectableText(
      localizations.welcome,
      style: themeData.textTheme.bodyLarge,
    );
  }

  Widget _buildTitle() {
    return SelectableText(
      localizations.mahdiDahouei,
      style: themeData.textTheme.displaySmall,
    );
  }

  Widget _buildSubtitle() {
    return SelectableText(
      localizations.mobileApplicationDeveloper,
      style: themeData.textTheme.titleLarge,
    );
  }

  Widget _buildDescription() {
    return SelectableText(
      localizations.myDescription,
      style: themeData.textTheme.bodyMedium,
    );
  }

  Widget _buildSocials() {
    const spacing = SizedBox(
      width: 4.0,
      height: 4.0,
    );
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 416.0,
      ),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0,
          // crossAxisCount: 4,
          mainAxisSpacing: spacing.width!,
          crossAxisSpacing: spacing.height!,
          childAspectRatio: 1,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SocialIconButton(
            imageAssetSrc: MyPngIcons.gmail,
            onTap: () {
              launchEmail(myEmail);
            },
            name: localizations.gmail,
            // tooltip: myEmail,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.stackoverflow,
            url: myStackoverflow,
            name: localizations.stackoverflow,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.github,
            url: myGithub,
            name: localizations.github,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.linkedin,
            url: myLinkedin,
            name: localizations.linkedin,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.instagram,
            url: myInstagram,
            name: localizations.instagram,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.youtube,
            url: myYoutube,
            name: localizations.youtube,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.soundcloud,
            url: mySoundCloud,
            name: localizations.soundcloud,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.telegram,
            url: myTelegram,
            name: localizations.telegram,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    localizations = AppLocalizations.of(context)!;
    themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kSpaceL,
        _buildWelcome(),
        const SizedBox(
          height: 8.0,
        ),
        _buildTitle(),
        _buildSubtitle(),
        kSpaceL,
        // _buildDescription(),
        // kSpaceL,
        _buildSocials(),
        kSpaceL,
      ],
    );
  }
}
