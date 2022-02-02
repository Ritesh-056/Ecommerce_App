import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';


class FlatIconButton extends StatelessWidget {

  final String textString;
  final IconData icon;
  const FlatIconButton({Key? key, required this.textString, required this.icon}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(12)),
           color: primaryButtonColor,
         ),
         child:Padding(
           padding: const EdgeInsets.symmetric(horizontal: 32.0),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(context, textString, primaryButtonTextColor, 14.0, FontWeight.bold, TextDecoration.none),
                Icon(icon,size: 20.0, color: primaryButtonTextColor,),
              ],
           ),
         ),
      ),
    );
  }
}
