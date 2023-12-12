// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/constants.dart';
import 'package:xpense_web_flutter/widgets/commoncontainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer5(),
      desktop: DesktopContainer5(),
    );
  }
}

//----------------------DESKTOP----------------------
Widget DesktopContainer5() {
  return CommonContainer(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tell us about ourseleves evakljd \ndjf vdsn vkdfj vjdkj \ndjf vdsn vkdfj vjdkj',
      illustration3,
      false);
}

//--------------------MOBILE---------------------------
Widget MobileContainer5() {
  return CommonContainer(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tell us about ourseleves evakljd \ndjf vdsn vkdfj vjdkj \ndjf vdsn vkdfj vjdkj',
      illustration3,
      true);
}
