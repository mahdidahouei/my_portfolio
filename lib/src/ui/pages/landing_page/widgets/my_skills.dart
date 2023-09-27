import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/widgets/skill.dart';

import '../../../../../websites.dart';
import '../../../global/assets/icons.dart';
import '../../../global/utils/url_launcher.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: [
        Skill(
          icon: const FlutterLogo(),
          name: localizations.flutter,
          onTap: () {
            launch(flutterSite);
          },
        ),
        Skill(
          icon: Image.asset(MyPngIcons.nodejs),
          name: localizations.nodejs,
          onTap: () {
            launch(nodejsSite);
          },
        ),
        Skill(
          icon: Image.asset(MyPngIcons.figma),
          name: localizations.figma,
          onTap: () {
            launch(figmaSite);
          },
        ),
        Skill(
          icon: Image.asset(MyPngIcons.dart),
          name: localizations.dart,
          onTap: () {
            launch(dartSite);
          },
        ),
        Skill(
          icon: Image.asset(MyPngIcons.swift),
          name: localizations.swift,
          onTap: () {
            launch(swiftSite);
          },
        ),
        Skill(
          icon: Image.asset(MyPngIcons.java),
          name: localizations.java,
          onTap: () {
            launch(javaSite);
          },
        ),
      ],
    );
  }
}
