// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/constants.dart';
import 'package:xpense_web_flutter/widgets/commoncontainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }
}
//----------------------DESKTOP----------------------
Widget DesktopContainer4() {
  return CommonContainerDesktop(
      'BRANDING AND DIGITAL MARKETING',
      'Elevate YourPresence,\nIgnite Your Brand',
      'Ignite your brand with our comprehensive digital marketing services. From strategic branding to powerful online campaigns, we amplify your presence, ensuring your business shines in the digital landscape.',
      illustration2,
      true);
}
//--------------------MOBILE---------------------------
Widget MobileContainer4() {
  return CommonContainerMobile(
      'BRANDING AND DIGITAL MARKETING',
      'Elevate YourPresence,\nIgnite Your Brand',
      'Ignite your brand with our comprehensive digital marketing services. From strategic branding to powerful online campaigns, we amplify your presence, ensuring your business shines in the digital landscape.',
      illustration2,
      );
}
