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
    'ALWAYS ONLINE',
    'Real-time \nsupport \nwith cloud',
    'Tell us about ourseleves evakljd \ndjf vdsn vkdfj vjdkj \ndjf vdsn vkdfj vjdkj',
    illustration1,
    false
  );
  }


  //--------------------MOBILE---------------------------
  Widget MobileContainer3() {
  return CommonContainerMobile(
      'SAVE SOME COST',
      'Save cost \nfor you your\nfamily',
      'Tell us about ourseleves evakljd djf vdsn vkdfj vjdkj djf vdsn vkdfj vjdkj',
      illustration1,
      );
}
