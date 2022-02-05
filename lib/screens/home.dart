import 'package:ecommerce_jenisha/components/container_border_image.dart';
import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/functions/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double paddingSize = 16.0;
  final Color textColor = Colors.black;
  final Color iconColor = Colors.black;
  final double iconHeightWidth = 24.0;
  late EdgeInsets edgeInsetsPadding;
  final double sizedBoxHeightWidth = 16.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    edgeInsetsPadding = EdgeInsets.symmetric(horizontal: paddingSize);

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(sizedBoxHeightWidth),
              Padding(
                padding: edgeInsetsPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 25.0,
                    ),
                    Row(
                      children: [
                        ContainerWithImageAndBorderRadius(
                            mHeight: 25,
                            mWidth: 25,
                            mColor: primaryButtonColor,
                            borderRadius: 12.0,
                            imgPath: 'assets/union.png'),
                        addHorizontalSpace(sizedBoxHeightWidth / 2),
                        text(context, "Audio", textColor, 19.5, FontWeight.bold,
                            TextDecoration.none),
                      ],
                    ),
                    ContainerWithImageAndBorderRadius(
                      mHeight: 35,
                      mWidth: 35,
                      mColor: Colors.transparent,
                      borderRadius: 12.0,
                      imgPath: 'assets/avatar.png',
                    ),
                  ],
                ),
              ),
              addVerticalSpace(sizedBoxHeightWidth * 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: edgeInsetsPadding,
                    child: text(context, "Hi, Andrea", textColor, 16.0,
                        FontWeight.normal, TextDecoration.none),
                  ),
                  addVerticalSpace(sizedBoxHeightWidth / 2),
                  Padding(
                    padding: edgeInsetsPadding,
                    child: text(context, "What are you looking for\ntoday ?",
                        textColor, 24.0, FontWeight.bold, TextDecoration.none),
                  ),
                ],
              ),
              addVerticalSpace(sizedBoxHeightWidth),
              Padding(
                padding: edgeInsetsPadding,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey, size: 20.0),
                        SizedBox(
                          width: 8.0,
                        ),
                        text(context, "Search headphone", Colors.grey, 14.0,
                            FontWeight.normal, TextDecoration.none),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Positioned(
            top: 260,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0))),
                child: Column(
                  children: [
                    // top items for grey background items
                    addVerticalSpace(sizedBoxHeightWidth + 4.0),
                    Padding(
                      padding: edgeInsetsPadding,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            'HeadPhone',
                            'Headband',
                            'Earpads',
                            'Camera',
                            'EarPhone'
                          ]
                              .map((itemString) => itemsCategories(itemString))
                              .toList(),
                        ),
                      ),
                    ),

                    // end of top items for grey background items
                    addVerticalSpace(sizedBoxHeightWidth),
                    Padding(
                      padding: edgeInsetsPadding,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            'TMA-2 Modular Headphone',
                            'TMA-2 Modular Headphone'
                          ].map((text) => ShopNowContainerItems(text)).toList(),
                        ),
                      ),
                    ),
                    addVerticalSpace(sizedBoxHeightWidth),
                    Padding(
                      padding: edgeInsetsPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(context, "Featured Products", textColor, 16.0,
                              FontWeight.normal, TextDecoration.none),
                          text(context, "See All", Colors.grey, 14.0,
                              FontWeight.normal, TextDecoration.none),
                        ],
                      ),
                    ),
                    addVerticalSpace(sizedBoxHeightWidth),

                    Padding(
                      padding: edgeInsetsPadding,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FeaturedProductContainer('assets/speaker.png',
                                "TMA-2 HD Wireless", "USD 350"),
                            FeaturedProductContainer(
                                'assets/seth.png', "C02 - Cable", "USD 25"),
                            FeaturedProductContainer('assets/speaker.png',
                                "TMA-2 HD Wireless", "USD 350"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryButtonColor,
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 20.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/search');
        },
      ),
    ));
  }

  Widget itemsCategories(String itemString) {
    return Container(
        margin: EdgeInsets.only(right: 8.0),
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: text(
                context,
                itemString,
                itemString == 'HeadPhone' ? Colors.white : Colors.grey,
                14.0,
                FontWeight.normal,
                TextDecoration.none)),
        decoration: BoxDecoration(
          color: itemString == 'HeadPhone'
              ? primaryButtonColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(50.0),
        ));
  }

  Widget ShopNowContainerItems(String shopItemText) {
    return Container(
      width: 326,
      height: 178,
      margin: EdgeInsets.only(right: sizedBoxHeightWidth),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: sizedBoxHeightWidth + sizedBoxHeightWidth / 2,
            vertical: sizedBoxHeightWidth),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(sizedBoxHeightWidth),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: text(context, shopItemText, textColor, 22.0,
                        FontWeight.bold, TextDecoration.none),
                  ),
                  addVerticalSpace(sizedBoxHeightWidth),
                  Row(
                    children: [
                      text(context, 'Shop now ', primaryButtonColor, 14.0,
                          FontWeight.bold, TextDecoration.none),
                      addHorizontalSpace(sizedBoxHeightWidth / 2),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: primaryButtonColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            addHorizontalSpace(sizedBoxHeightWidth * 2),
            Image.asset(
              'assets/speaker.png',
              height: 135,
              width: 117,
            )
          ],
        ),
      ),
    );
  }

  Widget FeaturedProductContainer(
      String productImgURL, String productName, String productPrice) {
    return Container(
      width: 155,
      height: 213,
      margin: EdgeInsets.only(right: sizedBoxHeightWidth),
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
            Center(
                child: Image.asset(
              productImgURL,
              height: 125,
              width: 135,
            )),
            text(context, productName, textColor, 14.0, FontWeight.normal,
                TextDecoration.none),
            addVerticalSpace(sizedBoxHeightWidth / 2),
            text(context, productPrice, textColor, 12.0, FontWeight.bold,
                TextDecoration.none),
          ],
        ),
      ),
    );
  }
}
