import 'package:flutter/material.dart';
import 'package:my_portfolio/src/ui/global/assets/icons.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({Key? key, this.size = 48.0}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MyPngIcons.mahdidahouei,
      height: size,
      width: size,
      fit: BoxFit.contain,
    );
  }
}
