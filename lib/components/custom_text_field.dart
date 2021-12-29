import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final bool? isPassword;

  CustomTextField({
    this.isPassword = false,
    this.controller,
    this.hintText = '',
    this.prefixIcon = Icons.search,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword!,
        decoration: new InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
          prefixIcon: Icon(prefixIcon),
        ),
      ),
    ));
  }
}
