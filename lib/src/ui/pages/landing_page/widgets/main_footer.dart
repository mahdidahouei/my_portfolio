import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/portfolio_info.dart';
import 'package:my_portfolio/src/ui/global/assets/icons.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';

import '../../../global/utils/url_launcher.dart';

class MainFooter extends StatefulWidget {
  const MainFooter({Key? key}) : super(key: key);

  @override
  State<MainFooter> createState() => _MainFooterState();
}

class _MainFooterState extends State<MainFooter> {
  Widget _buildIcon({
    required IconData icon,
    String? url,
    VoidCallback? onTap,
    String? tooltip,
  }) {
    return IconButton(
      onPressed: onTap ??
          () {
            if (url != null) {
              launch(url);
            }
          },
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      color: _themeData.canvasColor,
      tooltip: tooltip,
    );
  }

  late ThemeData _themeData;

  @override
  Widget build(BuildContext context) {
    _themeData = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;

    final mediaQueryData = MediaQuery.of(context);

    final isSmall = mediaQueryData.size.width <= 485;

    debugPrint("mediaQueryData.size.width:${mediaQueryData.size.width}");

    const spacing = SizedBox(
      width: 8.0,
      height: 8.0,
    );
    return Ink(
      color: _themeData.primaryColor,
      padding: kPagesPadding,
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: spacing.width!,
          runSpacing: spacing.height!,
          children: [
            _buildIcon(
              icon: MyIcons.stackoverflow,
              url: myStackoverflow,
              tooltip: localizations.stackoverflow,
            ),
            _buildIcon(
              icon: MyIcons.github,
              url: myGithub,
              tooltip: localizations.github,
            ),
            _buildIcon(
              icon: MyIcons.linkedin,
              url: myLinkedin,
              tooltip: localizations.linkedin,
            ),
            _buildIcon(
              icon: MyIcons.telegram,
              url: myTelegram,
              tooltip: localizations.telegram,
            ),
            _buildIcon(
              icon: MyIcons.gmail,
              onTap: () {
                launchEmail(myEmail);
              },
              tooltip: localizations.gmail,
            ),
            _buildIcon(
              icon: MyIcons.instagram,
              url: myInstagram,
              tooltip: localizations.instagram,
            ),
            _buildIcon(
              icon: MyIcons.soundcloud,
              url: mySoundCloud,
              tooltip: localizations.soundcloud,
            ),
            _buildIcon(
              icon: MyIcons.youtube,
              url: myYoutube,
              tooltip: localizations.youtube,
            ),
          ],
        ),
      ),
    );
  }
}
