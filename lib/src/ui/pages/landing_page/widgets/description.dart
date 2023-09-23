import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/portfolio_info.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/global/utils/url_launcher.dart';

import '../../../global/widgets/app_button.dart';

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
          localizations.aboutMe,
          style: themeData.textTheme.displaySmall,
        ),
        kSpaceL,
        Text(
          localizations.myDescription,
          style: themeData.textTheme.bodyMedium,
        ),
        kSpaceL,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppButton(
              onTap: () {
                launch(myResume);
              },
              primaryButton: false,
              text: localizations.viewResume,
            ),
            kSpaceL,
            AppButton(
              onTap: () {},
              shrinkWrap: true,
              text: localizations.publishedApplications,
            ),
          ],
        ),
      ],
    );
  }
}
