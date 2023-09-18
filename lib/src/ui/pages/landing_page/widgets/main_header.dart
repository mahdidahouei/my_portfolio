import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/global/utils/constants.dart';
import 'package:my_portfolio/src/ui/global/widgets/my_logo.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: kPagesPaddingValue,
          ),
          MyLogo(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
