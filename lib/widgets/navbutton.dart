import 'package:flutter/material.dart';
Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        //style: borderedButtonStyle,
        onPressed: (){},
        child: Text(
          text,
          style:TextStyle(
            color:Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }