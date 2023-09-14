import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/global/assets/images.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(Images.myPicture1);
  }
}
