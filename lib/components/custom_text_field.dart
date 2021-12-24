import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? isPassword;
  final Color? borderColor;

  CustomTextField({
    this.suffixIcon = Icons.search,
    this.isPassword = false,
    this.borderColor = Colors.transparent,
    this.controller,
    this.hintText = '',
    this.prefixIcon = Icons.search,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
      controller: controller,
      obscureText: isPassword!,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor!, width: 1.0)),
        hintText: hintText,
        hintStyle: TextStyle(color: primaryButtonTextColor),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
      ),
    ));
  }
}
