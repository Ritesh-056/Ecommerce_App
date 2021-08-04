import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final Color borderColor;

   CustomTextField({
        
     required  this.controller,
     required  this.hintText,
     required  this.prefixIcon,
     required  this.suffixIcon,
     required  this.isPassword,
     required  this.borderColor});

 
  @override
  Widget build(BuildContext context) {
    return Container(
      
       child:TextFormField(
         controller: controller,
         obscureText: isPassword,
         decoration: InputDecoration(
            focusedBorder:OutlineInputBorder( 
              borderSide:BorderSide(
                color:Colors.greenAccent,
                width:1.0)
            ),
                   enabledBorder:OutlineInputBorder( 
              borderSide:BorderSide(
                color:Colors.greenAccent,
                width:1.0)
            ),
                   border:OutlineInputBorder( 
              borderSide:BorderSide(
                color: borderColor,
                width:1.0)
            ),
            hintText: hintText,
            prefixIcon:Icon(prefixIcon),
            suffixIcon:Icon(suffixIcon),
             
          ),
        
         )
    );
  }
}
