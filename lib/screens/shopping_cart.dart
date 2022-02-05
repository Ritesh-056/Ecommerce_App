import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/components/custom_flatbutton_icon.dart';
import 'package:ecommerce_jenisha/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../const.dart';

class ShoppingListCart extends StatefulWidget {
  const ShoppingListCart({Key? key}) : super(key: key);

  @override
  _ShoppingListCartState createState() => _ShoppingListCartState();
}

class _ShoppingListCartState extends State<ShoppingListCart> {
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
                        text(context, 'Search', textColor, 16, FontWeight.bold,
                            TextDecoration.none),
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: iconHeightWidth,
                          color: iconColor,
                        ),
                      ], //close of row for top items
                    ),
                  ),
                  addVerticalSpace(sizedBoxHeightWidth * 2),
                  Padding(
                    padding: edgeInsetsPadding,
                    child: ShoppingCardProductItem(
                        productName: 'TMA-2 Comfort Wireless ',
                        productPrice: 'USD 270',
                        productImageUrI: 'assets/speaker.png'),
                  ),
                  addVerticalSpace(sizedBoxHeightWidth * 2),
                  Padding(
                    padding: edgeInsetsPadding,
                    child: ShoppingCardProductItem(
                      productName: 'C02 - Cable',
                      productPrice: 'USD 25',
                      productImageUrI: 'assets/seth.png',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: sizedBoxHeightWidth * 2,
                child: Padding(
                  padding: edgeInsetsPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text(context, 'Total 2 items', Colors.black45, 12.0,
                                FontWeight.bold, TextDecoration.none),
                            text(context, 'USD 295', textColor, 14.0,
                                FontWeight.bold, TextDecoration.none),
                          ],
                        ),
                      ),
                      addVerticalSpace(sizedBoxHeightWidth),
                      FlatIconButton(
                        textString: 'Proceed to Checkout',
                        icon: Icons.arrow_forward_ios_sharp,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryButtonColor,
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 20.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/cart_item_details');
        },
      ),
    ));
  }
}

//class for shoppingCardProductItem
class ShoppingCardProductItem extends StatelessWidget {
  final String productName, productPrice, productImageUrI;

  const ShoppingCardProductItem(
      {Key? key,
      required this.productName,
      required this.productPrice,
      required this.productImageUrI})
      : super(key: key);

  final Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 87,
            width: 87,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                productImageUrI,
                height: 67,
                width: 67,
              ),
            ),
          ),
          addHorizontalSpace(16.0),
          Container(
            width: MediaQuery.of(context).size.width - 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, productName, textColor, 16.0, FontWeight.normal,
                    TextDecoration.none),
                addVerticalSpace(8.0),
                text(context, productPrice, textColor, 14.0, FontWeight.bold,
                    TextDecoration.none),
                addVerticalSpace(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BoxBorderContainer(themeData: Icons.remove),
                        addHorizontalSpace(16.0),
                        text(context, '1', textColor, 16.0, FontWeight.normal,
                            TextDecoration.none),
                        addHorizontalSpace(16.0),
                        BoxBorderContainer(themeData: Icons.add),
                      ],
                    ),
                    Icon(
                      Icons.delete,
                      size: 20.0,
                      color: Colors.black45,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//defining boxDecoration as a BoxBorderContainer class
class BoxBorderContainer extends StatelessWidget {
  final dynamic themeData;

  const BoxBorderContainer({Key? key, required this.themeData})
      : super(key: key);

  final Color iconColor = Colors.black;
  final double iconHeightWidth = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          themeData,
          size: iconHeightWidth,
          color: iconColor,
        ),
      ),
    );
  }
}
