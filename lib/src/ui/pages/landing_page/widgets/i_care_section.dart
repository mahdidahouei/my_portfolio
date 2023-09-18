import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';

class ICareSection extends StatelessWidget {
  const ICareSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.iCare,
          style: themeData.textTheme.displaySmall,
        ),
        kSpaceL,
        Text(localizations.iCareDescription),
      ],
    );
  }
}
