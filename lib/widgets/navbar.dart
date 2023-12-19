import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/colors.dart';
import 'package:xpense_web_flutter/utils/styles.dart';
import 'package:xpense_web_flutter/widgets/navbutton.dart';
import 'package:xpense_web_flutter/widgets/navlogo.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

//====================MOBILE NAVBAR====================//

  Widget MobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20),
      height: 70,child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
          navButton('Services'),
          navButton('About'),
          navButton('Get in touch'),
          navButton('Blog'),
        ],
      )
    );
  }


//====================DESKTOP NAVBAR====================//

  Widget DesktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          navLogo(),
          Row(children: [
              navButton('Services'),
              navButton('About'),
              navButton('Get in touch'),
              navButton('Blog'),
            ],
          ),
          Container(
            height: 45,
            child:ElevatedButton(
              style: borderedButtonStyle,
              onPressed: (){},
              child: Text(
                'Get free consultation',
                style: TextStyle(color: AppColors.primary)
              ),
            )
            ),
        ],
      ),
    );
  }
}