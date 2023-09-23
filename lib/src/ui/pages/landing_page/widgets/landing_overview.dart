import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../portfolio_info.dart';
import '../../../global/assets/images.dart';
import '../../../global/utils/constants.dart';
import '../../../global/utils/url_launcher.dart';
import '../../../global/widgets/app_button.dart';
import 'introduction_section.dart';
import 'my_skills.dart';
import 'socials_buttons.dart';

class LandingOverview extends StatelessWidget {
  const LandingOverview({
    Key? key,
    required this.appBarHeight,
  }) : super(key: key);

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);
    final height = mediaQueryData.size.height - appBarHeight;
    final renderBox = context.findRenderObject();
    final isBigEnough = mediaQueryData.size.width > 500;
    final actionButtons = [
      AppButton(
        onTap: () {
          launch(myResume);
        },
        primaryButton: false,
        shrinkWrap: isBigEnough,
        text: localizations.viewResume,
      ),
      // const SizedBox(
      //   height: 8.0,
      //   width: 8.0,
      // ),
      // AppButton(
      //   onTap: () {},
      //   shrinkWrap: isBigEnough,
      //   text: localizations.publishedApplications,
      // ),
    ];

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
      ),
      // color: themeData.primaryColor,
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                // gradient: LinearGradient(
                //   colors: [
                //     themeData.primaryColor,
                //     themeData.colorScheme.secondary,
                //   ],
                //   begin: Alignment(-0.6, -2.0),
                //   end: Alignment.bottomRight,
                //   stops: [
                //     0.0,
                //     0.9,
                //   ],
                //   // radius: max(
                //   //     mediaQueryData.size.width, mediaQueryData.size.height),
                // ),
                image: /*themeData.brightness == Brightness.light
                    ? null
                    :*/
                    DecorationImage(
                  image: AssetImage(
                    themeData.brightness == Brightness.light
                        ? Images.flutterCodeBlur
                        : Images.flutterCode,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                      themeData.brightness == Brightness.dark ? 0.85 : 0.3,
                    ),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                    isBigEnough ? (kPagesPaddingValue - 16) : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: max((height * 0.75) - 485, 36.0),
                        ),
                        const IntroductionSection(
                          maxIconsPerRow: 0,
                          foregroundColor: Colors.white,
                        ),
                        kSpaceL,
                        const MySkills(),
                        kSpaceL,
                        if (isBigEnough)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: actionButtons,
                          )
                        else
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: actionButtons,
                          ),
                        kSpaceL,
                        // SelectableText(
                        //   localizations.mahdiDahouei,
                        //   style: themeData.textTheme.displaySmall,
                        // ),
                        // kSpaceL,
                        // SelectableText(
                        //   localizations.mobileApplicationDeveloper,
                        //   style: themeData.textTheme.titleLarge,
                        // ),
                        // kSpaceL,
                        // const SocialsButtons(),
                      ],
                    ),
                    Center(
                      child: SocialsButtons(
                        foregroundColor: Colors.white.withOpacity(0.85),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
