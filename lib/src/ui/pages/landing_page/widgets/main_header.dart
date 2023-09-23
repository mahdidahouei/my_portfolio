import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_portfolio/portfolio_info.dart';
import 'package:my_portfolio/src/ui/global/animations/animated_zoom_in_out.dart';
import 'package:my_portfolio/src/ui/global/animations/my_animated_opacity.dart';
import 'package:my_portfolio/src/ui/global/utils/url_launcher.dart';

import '../../../global/utils/constants.dart';
import '../../../global/widgets/app_button.dart';
import '../../../global/widgets/my_logo.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({
    Key? key,
    this.showsTrailingButton = true,
  }) : super(key: key);

  final bool showsTrailingButton;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

    return Container(
      color: themeData.scaffoldBackgroundColor,
      child: SizedBox(
        height: preferredSize.height,
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 16.0, horizontal: kPagesPaddingValue),
            child: Row(
              children: [
                const MyLogo(),
                const Spacer(),
                MyAnimatedOpacity(
                  show: showsTrailingButton,
                  child: AnimatedZoomInOut(
                    child: AppButton(
                      text: localizations.requestProject,
                      shrinkWrap: true,
                      onTap: () {
                        launchEmail(myEmail);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
