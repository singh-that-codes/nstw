// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_flutter/utils/colors.dart';
import 'package:xpense_web_flutter/utils/constants.dart';
class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }
}
//----------------------DESKTOP----------------------
Widget DesktopContainer1(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 20),
    child: Row(children: [
        Expanded(child:
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                'Track your \nExpenses to \nSave Money',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: w!/20,
                  fontWeight: FontWeight.bold,
                  height:1.2,
                )
              ),
              SizedBox(
                height: 5
              ),
              Text(
                'Helps you orgainse your income and expense',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 20
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primary)),
                      onPressed: (){},
                      icon: Icon(Icons.arrow_drop_down),
                      label: Text('Try free demo'),)
                  ),
                  SizedBox(
                    width: 20
                  ),
                  Text(
                    '-Web, iOs and Android',
                    style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 20
                ),
                  )
                ],
              )
            ],)
          ),
        ),
        Expanded(child:
          Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(illustration1),
                fit:BoxFit.contain
              ),
            ),
          ),
        ),
      ],
    )
  );
}

//--------------------------MOBILE------------------------------
Widget MobileContainer1(){
  return Column(children: [
      Container(
        height: w!/1.2,
        width:w!/1.2,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(illustration1), fit: BoxFit.contain),
        ),
      ),
    SizedBox(height: 20,),
    Column(
    children: [
      Text(
        'Track your \nExpenses to \nSave Money',
        textAlign: TextAlign.center,
        style: GoogleFonts.hindSiliguri(
                fontSize: w! / 10,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
      ),
      SizedBox(
        height: 5
      ),
        Text(
          'Helps you organize your \nincome and expense',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16
          ),
        ),
        SizedBox(
          height: 20
        ),
        Column(
          children: [
            Container(
              height: 45,
              child: ElevatedButton.icon(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primary)),
                onPressed: (){},
                icon: Icon(Icons.arrow_drop_down),
                label: Text('Try free demo'),)
            ),
            SizedBox(
              height: 20
            ),
            Text(
              '-Web, iOs and Android',
              textAlign: TextAlign.center,
              style: GoogleFonts.hindSiliguri(fontSize:16,)
          ),
            
          ],
        )
      ],),
      
    ],
  );
}

