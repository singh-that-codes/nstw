import 'package:flutter/material.dart';
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
      mobile: DesktopContainer1(),
      desktop: DesktopContainer1(),
    );
  }
}
Widget DesktopContainer1(){
  return Container(
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
                height: 20
              ),
              Text(
                'Helps you orgainse your income and expense',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16
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
                    fontSize: 16
                ),
                  )
                ],
              )
            ],)
          ),
        )
      ],
    )
  );
}
