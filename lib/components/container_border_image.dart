import 'package:flutter/material.dart';


class ContainerWithImageAndBorderRadius extends StatelessWidget{

  final double mHeight;
  final double mWidth;
  final Color mColor;
  final double borderRadius;
  final String imgPath;

  const ContainerWithImageAndBorderRadius({Key? key, required this.mHeight, required this.mWidth,  required this.mColor, required this.borderRadius, required this.imgPath}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
        color: mColor,
        borderRadius:
        BorderRadius.all(Radius.circular(borderRadius)),
        image: DecorationImage(
          image: AssetImage(
            imgPath,
          ),
        ),
      ),
    );
  }

}