import 'dart:io';

import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/functions/functions.dart';
import 'package:flutter/material.dart';

class CartShoppingItemDetails extends StatefulWidget {
  @override
  CartShoppingItemDetailsState createState() => CartShoppingItemDetailsState();
}

class CartShoppingItemDetailsState extends State<CartShoppingItemDetails> {
  final double paddingSize = 16.0;
  final Color textColor = Colors.black;
  final Color iconColor = Colors.black;
  final double iconHeightWidth = 24.0;
  late EdgeInsets edgeInsetsPadding;
  final double sizedBoxHeightWidth = 16.0;


  @override
  Widget build(BuildContext context) {
    edgeInsetsPadding = EdgeInsets.symmetric(horizontal: paddingSize);
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      addVerticalSpace(sizedBoxHeightWidth),
                      Padding(
                        padding: edgeInsetsPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: iconHeightWidth,
                              color: iconColor,
                            ),
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: iconHeightWidth,
                              color: iconColor,
                            ),
                          ], //close of row for top items
                        ),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth *2),
                      Padding(
                        padding: edgeInsetsPadding,
                        child: text(context, 'USD 350', primaryButtonColor, 16.0,
                            FontWeight.bold, TextDecoration.none),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth),
                      Padding(
                        padding: edgeInsetsPadding,
                        child:Text(
                          'TMA-2 \nHD WIRELESS',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 28.0,
                              fontWeight:FontWeight.bold,
                              letterSpacing: 0.2,
                              fontFamily: "Montserrat"
                          ),
                        )
                      ),
                      addVerticalSpace(sizedBoxHeightWidth*2),
                      Padding(
                        padding: edgeInsetsPadding,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: ScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: ["Overview", "Features", "Specification"]
                                .map((values) => textGeneric(values))
                                .toList(),
                          ),
                        ),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth-8),
                      Center(

                        child: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          height: 3,
                          width: 30,
                          color: primaryButtonColor,
                        ),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth * 2),
                      Padding(
                        padding:edgeInsetsPadding,
                        child: text(context, 'Highly Detailed Audio', textColor, 16.0,
                            FontWeight.bold, TextDecoration.none),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth),
                      Padding(
                        padding: edgeInsetsPadding,
                        child: text(context, longText, textColor, 14.0,
                            FontWeight.normal, TextDecoration.none),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth),
                      Padding(
                        padding: edgeInsetsPadding,
                        child: text(context,longText, textColor, 14.0,
                            FontWeight.normal, TextDecoration.none),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth),
                      itemDetails('assets/cart_detail_img1.png',
                          text1_cart_item, text1_body_cart_item),
                      addVerticalSpace(sizedBoxHeightWidth),
                      itemDetails('assets/cart_detail_img2.png',
                          text2_cart_item, text2_body_cart_item),
                    ],
                  ),
                ),
                Positioned(
                    bottom: sizedBoxHeightWidth * 2,
                    child: Container(
                      padding: edgeInsetsPadding,
                      child: CustomElevatedButton(
                          text: 'Add To Cart',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          onPressed: () {}),
                    )),
              ],
            ),
          )),
    );
  }

  Widget textGeneric(String strText) {
    return Container(
      margin: EdgeInsets.only(left: paddingSize*2),
      child: text(context, strText, Colors.black, 16.0, FontWeight.normal,
          TextDecoration.none),
    );
  }

  Widget itemDetails(String imgURL, String textHeader, String textBody) {
    return Padding(
      padding: edgeInsetsPadding,
      child: Row(
        children: [
          Image.asset(
            imgURL,
            width: 99,
            height: 100,
          ),
          addHorizontalSpace(sizedBoxHeightWidth),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, textHeader, textColor, 16.0, FontWeight.bold,
                    TextDecoration.none),
                addVerticalSpace(sizedBoxHeightWidth),
                text(context, textBody, textColor, 14.0, FontWeight.normal,
                    TextDecoration.none),
              ],
            ),
          )
        ],
      ),
    );
  }

}
