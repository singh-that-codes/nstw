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
  return CommonContainerDesktop(
      'E-COMMERCE',
      'Transform Transactions\ninto Experiences',
      "Revolutionize your online presence\nwith our E-commerce expertise.\nWe don't just build platforms;\nwe create experiences that turn transactions into lasting\ncustomer connections, driving growth\nfor your business.",
      illustration3,
      false);
}

//--------------------MOBILE---------------------------
Widget MobileContainer5() {
  return CommonContainerMobile(
      'E-COMMERCE',
      'Transform Transactions\ninto Experiences',
      "Revolutionize your online presence\nwith our E-commerce expertise.\nWe don't just build platforms;\nwe create experiences that turn transactions into lasting\ncustomer connections, driving growth\nfor your business.",
      illustration3,
      );
}
