import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xpense_web_flutter/utils/colors.dart';
import 'package:xpense_web_flutter/utils/constants.dart';

Widget CommonContainer(String s1,s2,s3, image, bool imageLeft){
  return Container(
    color: Colors.white,padding: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    child: Row(
      children: [
        imageLeft ? Expanded(child: Container( 
        height: 530,
        decoration: BoxDecoration(image: DecorationImage(image: 
        AssetImage(image),
        fit:BoxFit.contain)
        ))):Container(),

        Expanded(child:
          Column(
            crossAxisAlignment:
                  imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(s1.toUpperCase(),
              style: GoogleFonts.hindSiliguri(fontSize:16, color:Colors.grey.shade400)
              ),
              SizedBox(height: 10),
              Text(s2,
                    textAlign: imageLeft?TextAlign.right:TextAlign.left,
                    style: GoogleFonts.hindSiliguri(
                        fontSize: w!/20, 
                        color: Color(0xff292830),
                        fontWeight: FontWeight.bold,
                        height: 1,
                        )),
              SizedBox(height: 10),
                Text(s3,
                    textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                    style: GoogleFonts.hindSiliguri(
                        fontSize: w! /50,
                        color: Colors.grey.shade400,
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      TextButton.icon(
                        onPressed: (){},
                        label: Text(
                          'Learn More',
                          style: GoogleFonts.hindSiliguri(color: AppColors.primary)
                        ),
                        icon: Icon(Icons.arrow_forward_ios, color: AppColors.primary),
                        
                      )
            ]
          )
        ,)
        
      ],
    ),
  );
}