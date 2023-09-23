import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/pages/landing_page/widgets/my_skills.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.mySkills,
          style: themeData.textTheme.displaySmall,
        ),
        kSpaceL,
        kSpaceL,
        const MySkills(),
      ],
    );
  }
}
