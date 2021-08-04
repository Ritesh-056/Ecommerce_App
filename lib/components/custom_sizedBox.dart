
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSizedBox extends StatelessWidget {
 
  final double height;
  final double width;

  CustomSizedBox({

    required this.height, 
    required this.width
    
    });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
