//to define the hex color in flutter we need to specify [0xff] alaways.

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//button color
const Color primaryButtonColor = Color(0xff0ACF83);

//button text color
const Color primaryButtonTextColor = Color(0xffFFFFFF);

//main text color white
const Color textColor = Colors.white;

//defining for gradient color
Color colorLinear = Color(0xff125038);
Color blackLinear = Color(0xff000000);


//height and width of icon container
const containerIconHeight = 52.0;
const containerIconWidth = 52.0;





//text item dummy
Widget text(BuildContext context, String text, Color colors, double mFontSize,
    FontWeight mfontWeight, TextDecoration decoration) {
  return new Text(
    text,
    style: TextStyle(
        color: colors,
        decoration: decoration,
        fontSize: mFontSize,
        fontWeight: mfontWeight,
        letterSpacing: 0.5,
        fontFamily: 'DM Sans'),
  );
}



//flutter toasts
 flutterToast(String msgToast) {
   Fluttertoast.showToast(
      msg: msgToast,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: primaryButtonColor,
      textColor: Colors.white,
      fontSize: 16.0);
}
