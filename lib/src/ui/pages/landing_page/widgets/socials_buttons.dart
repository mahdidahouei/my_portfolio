import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../portfolio_info.dart';
import '../../../global/assets/icons.dart';
import '../../../global/utils/url_launcher.dart';
import '../../../global/widgets/social_icon_button.dart';

class SocialsButtons extends StatelessWidget {
  const SocialsButtons({
    Key? key,
    this.maxIconsPerRow = 0,
    this.foregroundColor,
  }) : super(key: key);

  final int maxIconsPerRow;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

    const spacing = SizedBox(
      width: 4.0,
      height: 4.0,
    );

    const maxCrossAxisExtent = 100.0;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxIconsPerRow > 0
            ? (maxCrossAxisExtent + spacing.width!) * maxIconsPerRow
            : double.infinity,
      ),
      child: Wrap(
        spacing: spacing.width!,
        runSpacing: spacing.height!,

        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: maxCrossAxisExtent,
        //   // crossAxisCount: 4,
        //   mainAxisSpacing: spacing.width!,
        //   crossAxisSpacing: spacing.height!,
        //   childAspectRatio: 1,
        // ),
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        children: [
          SocialIconButton(
            imageAssetSrc: MyPngIcons.gmail,
            onTap: () {
              launchEmail(myEmail);
            },
            text: localizations.gmail,
            textColor: foregroundColor,

            // tooltip: myEmail,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.stackoverflow,
            url: myStackoverflow,
            text: localizations.stackoverflow,
            textColor: foregroundColor,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.github,
            url: myGithub,
            text: localizations.github,
            textColor: foregroundColor,
            imageColor: foregroundColor ??
                (themeData.brightness == Brightness.light
                    ? const Color(0xff25292e)
                    : Colors.white.withOpacity(0.85)),
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.linkedin,
            url: myLinkedin,
            text: localizations.linkedin,
            textColor: foregroundColor,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.instagram,
            url: myInstagram,
            text: localizations.instagram,
            textColor: foregroundColor,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.youtube,
            url: myYoutube,
            text: localizations.youtube,
            textColor: foregroundColor,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.soundcloud,
            url: mySoundCloud,
            text: localizations.soundcloud,
            textColor: foregroundColor,
          ),
          SocialIconButton(
            imageAssetSrc: MyPngIcons.telegram,
            url: myTelegram,
            text: localizations.telegram,
            textColor: foregroundColor,
          ),
        ],
      ),
    );
  }
}
