import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';

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
      style: themeData.textTheme.titleLarge,
    );
  }

  Widget _buildTitle() {
    return SelectableText(
      localizations.mahdiDahouei,
      style: themeData.textTheme.displayMedium,
    );
  }

  Widget _buildSubtitle() {
    return SelectableText(
      localizations.mobileApplicationDeveloper,
      style: themeData.textTheme.headlineSmall,
    );
  }

  Widget _buildDescription() {
    return SelectableText(
      localizations.myDescription,
      style: themeData.textTheme.bodyMedium,
    );
  }

  @override
  Widget build(BuildContext context) {
    localizations = AppLocalizations.of(context)!;
    themeData = Theme.of(context);
    final mediaQueryData = MediaQuery.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: max(mediaQueryData.size.width * 0.5, 600.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcome(),
          kSpaceL,
          _buildTitle(),
          _buildSubtitle(),
          kSpaceL,
          _buildDescription(),
        ],
      ),
    );
  }
}
