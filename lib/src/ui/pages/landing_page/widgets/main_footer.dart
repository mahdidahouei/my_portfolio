import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/portfolio_info.dart';
import 'package:my_portfolio/src/ui/global/assets/icons.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MainFooter extends StatefulWidget {
  const MainFooter({Key? key}) : super(key: key);

  @override
  State<MainFooter> createState() => _MainFooterState();
}

class _MainFooterState extends State<MainFooter> {
  Widget _buildIcon({
    required IconData icon,
    required String url,
    String? tooltip,
  }) {
    return IconButton(
      onPressed: () {
        launchUrl(
          Uri.parse(url),
          webOnlyWindowName: "_blank",
        );
      },
      icon: Icon(
        icon,
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
    const spacing = SizedBox(width: 8.0);
    return Ink(
      color: _themeData.primaryColor,
      padding: kPagesPadding,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIcon(
              icon: MyIcons.stackoverflow,
              url: myStackoverflow,
              tooltip: localizations.stackoverflow,
            ),
            spacing,
            _buildIcon(
              icon: MyIcons.linkedin,
              url: myLinkedin,
              tooltip: localizations.linkedin,
            ),
            spacing,
            _buildIcon(
              icon: MyIcons.telegram,
              url: myTelegram,
              tooltip: localizations.telegram,
            ),
            spacing,
            _buildIcon(
              icon: MyIcons.instagram,
              url: myInstagram,
              tooltip: localizations.instagram,
            ),
            spacing,
            _buildIcon(
              icon: MyIcons.soundcloud,
              url: mySoundCloud,
              tooltip: localizations.soundcloud,
            ),
            spacing,
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
