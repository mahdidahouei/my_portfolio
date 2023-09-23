import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroductionSection extends StatefulWidget {
  const IntroductionSection({
    Key? key,
    this.maxIconsPerRow = 4,
    this.foregroundColor,
  }) : super(key: key);

  final int maxIconsPerRow;
  final Color? foregroundColor;

  @override
  State<IntroductionSection> createState() => _IntroductionSectionState();
}

class _IntroductionSectionState extends State<IntroductionSection> {
  late AppLocalizations localizations;
  late ThemeData themeData;

  Widget _buildWelcome() {
    return SelectableText(
      localizations.welcome,
      style: themeData.textTheme.titleSmall!.apply(
        color: widget.foregroundColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildTitle() {
    return SelectableText(
      localizations.mahdiDahouei,
      style: themeData.textTheme.displaySmall!.apply(
        color: widget.foregroundColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSubtitle() {
    return SelectableText(
      localizations.mobileApplicationDeveloper,
      style: themeData.textTheme.titleLarge!.apply(
        color: widget.foregroundColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescription() {
    return SelectableText(
      localizations.myDescription,
      style: themeData.textTheme.bodyMedium!.apply(
        color: widget.foregroundColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    localizations = AppLocalizations.of(context)!;
    themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildWelcome(),
        const SizedBox(
          height: 8.0,
        ),
        _buildTitle(),
        _buildSubtitle(),
        // kSpaceL,
        // _buildDescription(),
      ],
    );
  }
}
