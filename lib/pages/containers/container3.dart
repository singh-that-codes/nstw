// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/constants.dart';
import 'package:xpense_web_flutter/widgets/commoncontainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }
}

//----------------------DESKTOP----------------------
Widget DesktopContainer3() {
  return CommonContainerDesktop(
    'BESPOKE SOFTWARE DEVELOPMENT',
    'Tailored Solutions for\nUnmatched Performance',
    'Crafting personalized software solutions\n,we bring your vision to life.\n From portfolios to cutting-edge web\n and mobile applications, \nour bespoke development ensures a\n seamless and unique experience.',
    illustration1,
    false
  );
  }


  //--------------------MOBILE---------------------------
  Widget MobileContainer3() {
  return CommonContainerMobile(
    'BESPOKE SOFTWARE DEVELOPMENT',
    'Tailored Solutions for\nUnmatched Performance',
    'Crafting personalized software solutions\n,we bring your vision to life.\n From portfolios to cutting-edge web\n and mobile applications, \nour bespoke development ensures a\n seamless and unique experience.',
    illustration1,
    );
}
