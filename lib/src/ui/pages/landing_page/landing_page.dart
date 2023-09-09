import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/global/widgets/my_scaffold.dart';
import 'package:my_portfolio/src/ui/pages/landing_page/widgets/introduction_section.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: IntroductionSection(),
    );
  }
}
