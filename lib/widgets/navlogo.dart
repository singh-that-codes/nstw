import 'package:flutter/material.dart';
import 'package:xpense_web_flutter/utils/constants.dart';

Widget navLogo(){
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo),
        ),
      )
    );
  }
