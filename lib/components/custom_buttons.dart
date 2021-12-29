import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  CustomElevatedButton({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: primaryButtonColor,
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
