import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/src/ui/global/themes.dart';

import 'ui/pages/landing_page/landing_page.dart';

class MahdiDahoueiApp extends StatelessWidget {
  const MahdiDahoueiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routes: {
        "/": (context) => const LandingPage(),
      },
    );
  }
}
