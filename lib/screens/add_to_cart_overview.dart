import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/functions/functions.dart';
import 'package:flutter/material.dart';


class AddToCartItemOverview extends StatefulWidget{


  @override
  _AddToCartItemOverviewState createState() => _AddToCartItemOverviewState();
}


class _AddToCartItemOverviewState extends State<AddToCartItemOverview>{

  final double paddingSize = 16.0;
  final Color textColor = Colors.black;
  final Color iconColor = Colors.black;
  final double iconHeightWidth = 24.0;
  late EdgeInsets edgeInsetsPadding;
  final double sizedBoxHeightWidth = 16.0;

  String reviewString ="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

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
                    addVerticalSpace(sizedBoxHeightWidth/2 - 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(left: paddingSize*2),
                        height: 3,
                        width: 30,
                        color: primaryButtonColor,
                      ),
                    ),
                    addVerticalSpace(sizedBoxHeightWidth),

                    Padding(
                      padding: edgeInsetsPadding,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        child: Row(
                          children: [
                                  'assets/headphone_large.png',
                                   'assets/headPhone_zoom.png'
                            ].map((imgURL) => ContainerImage(imgURL)).toList(),
                        ),
                      ),
                    ),
                    addVerticalSpace(sizedBoxHeightWidth*2),
                    Padding(
                      padding: edgeInsetsPadding,
                      child: text(context, 'Review (102)', textColor, 16.0,
                          FontWeight.normal, TextDecoration.none),
                    ),
                    addVerticalSpace(sizedBoxHeightWidth*2),
                    


                    Padding(
                      padding: edgeInsetsPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.asset('assets/avatar.png', height:40,width:40),
                          ),
                          Expanded(
                            child: Column(
                                mainAxisSize:MainAxisSize.min,
                              children: [
                                Row(
                                  children: [

                                    addHorizontalSpace(sizedBoxHeightWidth),
                                    text(context, 'Mandeline', textColor, 16.0,
                                        FontWeight.normal, TextDecoration.none),
                                    Spacer(),
                                    Spacer(),
                                    text(context, '1 Month ago', Colors.grey, 12.0,
                                        FontWeight.normal, TextDecoration.none),
                                  ],
                                ),
                                addVerticalSpace(sizedBoxHeightWidth/4),
                                Padding(
                                  padding:EdgeInsets.only(left: paddingSize),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star_rate,color:Color(0xffff8800), size: 16.0,),
                                      Icon(Icons.star_rate,color:Color(0xffff8800), size: 16.0,),
                                      Icon(Icons.star_rate,color:Color(0xffff8800), size: 16.0,),
                                      Icon(Icons.star_rate,color:Color(0xffff8800), size: 16.0,),
                                    ],
                                  ),
                                ),
                                addVerticalSpace(sizedBoxHeightWidth),
                                Padding(
                                  padding:EdgeInsets.only(left: paddingSize),
                                  child: text(context, reviewString, textColor, 14.0,
                                      FontWeight.normal, TextDecoration.none),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    addVerticalSpace(sizedBoxHeightWidth*2),
                    Padding(
                      padding: edgeInsetsPadding,
                      child: Center(
                        child: text(context, ' See All Reviews', Colors.grey, 14.0,
                            FontWeight.normal, TextDecoration.none),
                      ),
                    ),

                    addVerticalSpace(sizedBoxHeightWidth*2),


                    Container(
                      color:Colors.grey[200],
                      child: Column(
                        children: [
                          addVerticalSpace(sizedBoxHeightWidth),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(context, "Another Product", Colors.black, 16.0,
                                    FontWeight.normal, TextDecoration.none),
                                text(context, "See All", Colors.grey, 14.0,
                                    FontWeight.normal, TextDecoration.none),
                              ],
                            ),
                          ),
                          addVerticalSpace(sizedBoxHeightWidth),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Container(
                                      width: 170,
                                      height:200 ,
                                      margin: EdgeInsets.only(right: 8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all( 16.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Center(child: Image.asset('assets/speaker.png' ,height: 125, width: 125,)),
                                            text(context, "TMA-2 HD Wireless", Colors.black, 14.0,
                                                FontWeight.normal, TextDecoration.none),
                                            text(context, "USD 350", Colors.black, 12.0,
                                                FontWeight.bold, TextDecoration.none),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 170,
                                    height:200 ,
                                    margin: EdgeInsets.only(right: 8.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(child: Image.asset('assets/seth.png' ,height:125,width: 125,)),
                                          text(context, "C02 - Cable", Colors.black, 14.0,
                                              FontWeight.normal, TextDecoration.none),
                                          text(context, "USD 25", Colors.black, 12.0,
                                              FontWeight.bold, TextDecoration.none),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          addVerticalSpace(sizedBoxHeightWidth),
                        ],
                      ),
                    )


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
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryButtonColor,
          child: Icon(Icons.arrow_forward_ios_sharp, size: 20.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/user_profile' );
          },
        ),

      ),
    );
  }

  Widget textGeneric(String strText) {
    return Container(
      margin: EdgeInsets.only(right: paddingSize*3),
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

  Widget ContainerImage(String imgURL) {
    return Container(
      height: 391,
      width: 285,
      margin: EdgeInsets.only(right: paddingSize),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.asset(imgURL, height: 285.3, width: 247,)
    );
  }
}