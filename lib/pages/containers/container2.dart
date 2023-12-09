// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/colors.dart';
import 'package:xpense_web_flutter/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }
}

//----------------------DESKTOP----------------------
Widget DesktopContainer2() {
  return Container(
    height: 900,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.primary,
    ),
    child: Column(children: [
      Expanded(child: Stack(
        children: [
          Positioned(
            right: -200,
            top: -100,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage(vector), 
                fit:BoxFit.contain
                ), //
      ),
            ),
            ),
            Positioned(
                  left: -200,
                  bottom: -100,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain), //
                    ),
                  ),
                ),
          Positioned(
            left:43,
            right: 43,
            bottom: 0,
            child:Container(
              width: double.infinity,
              height:712,
              decoration:
                BoxDecoration(
                image: DecorationImage(image: AssetImage(dashboard)),
                )
              )
            )
          ],
        ),
      ),
      Container(
        color:Colors.white,
        padding:EdgeInsets.symmetric(vertical: 40),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            companyLogo(fb),
            companyLogo(google),
            companyLogo(cocacola),
            companyLogo(samsung)
        ],)
      ),
    ],)
   );
}


//--------------------------MOBILE------------------------------



Widget MobileContainer2() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Column(
      children: [
        Container(
          padding:EdgeInsets.only(left: 20,right: 20, bottom: 0, top:20),
                    width: double.infinity,
                    height: 195,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                        fit:BoxFit.contain,
                      ),
                    ),
                  ),


                  Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              companyLogo(fb),
              SizedBox(height: 30),
              companyLogo(google),
              SizedBox(height: 30),
              companyLogo(cocacola),
              SizedBox(height: 30),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),);

}


//--------------------companyLogo() widget-------------------------
Widget companyLogo(String image){
  return Container(
    width: 160,
    height: 36,
    decoration: BoxDecoration(
      image:DecorationImage(
        image: AssetImage(image), 
        fit:BoxFit.contain
        ), //
      ),
  );
}
