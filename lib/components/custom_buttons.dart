import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  CustomElevatedButton({
    required this.text,
    required this.textcolor,
    required this.fontSize,
    required this.fontWeight,
    required this.onPressed,
  });



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.green,
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
