import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';

class IntroductionSection extends StatefulWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  State<IntroductionSection> createState() => _IntroductionSectionState();
}

class _IntroductionSectionState extends State<IntroductionSection> {
  late final AppLocalizations localizations;
  late final ThemeData themeData;

  Widget _buildWelcome() {
    return Text(
      localizations.welcome,
    );
  }

  Widget _buildTitle() {
    return Text(
      localizations.introduceMe,
    );
  }

  Widget _buildDescription() {
    return Text(
      localizations.myDescription,
    );
  }

  @override
  Widget build(BuildContext context) {
    localizations = AppLocalizations.of(context)!;
    themeData = Theme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 600.0,
      ),
      child: Column(
        children: [
          _buildWelcome(),
          kSpaceL,
          _buildTitle(),
          kSpaceL,
          _buildDescription(),
        ],
      ),
    );
  }
}
