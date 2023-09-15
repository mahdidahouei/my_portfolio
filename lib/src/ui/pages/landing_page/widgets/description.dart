import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/global/widgets/app_button.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.myDescription,
          style: themeData.textTheme.headlineSmall,
        ),
        kSpaceL,
        AppButton(
          shrinkWrap: true,
          primaryButton: false,
          text: localizations.viewResume,
          onTap: () {},
        ),
      ],
    );
  }
}
