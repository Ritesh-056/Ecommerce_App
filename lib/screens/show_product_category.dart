import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';


class ShowProductCategory extends StatefulWidget {
  const ShowProductCategory({Key? key}) : super(key: key);

  @override
  _ShowProductCategoryState createState() => _ShowProductCategoryState();
}

class _ShowProductCategoryState extends State<ShowProductCategory> {

  double sizedBoxHeight = 16.0 ;
  Color textColor = Colors.black ;
  double iconHeightWidth = 24.0 ;
  Color iconColor = Colors.black ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    Row(
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
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    text(context, "Headphone",textColor, 16.0,
                        FontWeight.normal, TextDecoration.none),
                    SizedBox(
                      height: sizedBoxHeight/2,
                    ),
                    text(context, "TMA Wireless",textColor, 24.0,
                        FontWeight.bold, TextDecoration.none),
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      child: Row(
                        children: [
                          Container(
                            height: 41,
                            width: 92,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  SizedBox(width:8,),
                                  Image.asset('assets/sliders.png', height:20, width: 20,),
                                  SizedBox(width:8,),
                                  text(context, "Filter", textColor, 14.0,
                                      FontWeight.normal, TextDecoration.none),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16,),
                          text(context, "Popularity", textColor, 14.0,
                              FontWeight.normal, TextDecoration.none),
                          SizedBox(width: 16,),
                          text(context, "Newest", textColor, 14.0,
                              FontWeight.normal, TextDecoration.none),
                          SizedBox(width: 16,),
                          text(context, "Most Expensive", textColor, 14.0,
                              FontWeight.normal, TextDecoration.none),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizedBoxHeight ,
                    ),

                  ],
                ),
              ),
              //row for top items
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(25.0),right: Radius.circular(25.0)),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customPopularProductsItems('TMA-2 HD Wireless '),
                            SizedBox(width: sizedBoxHeight,),
                            customPopularProductsItems('TMA-2 HD Wireless'),

                          ],
                        ),
                      SizedBox(height: sizedBoxHeight,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customPopularProductsItems('TMA-2 HD Wireless '),
                          SizedBox(width: sizedBoxHeight,),
                          customPopularProductsItems('TMA-2 HD Wireless'),

                        ],
                      ),
                      SizedBox(height: sizedBoxHeight,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customPopularProductsItems('TMA-2 HD Wireless '),
                          SizedBox(width: sizedBoxHeight,),
                          customPopularProductsItems('TMA-2 HD Wireless'),

                        ],
                      )
                    ],
                  ),
                ),
              ),

            ], //close of column widget [main widget for wrapping children widgets]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryButtonColor,
          child: Icon(Icons.arrow_forward_ios_sharp, size: 20.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/shopping_list_cart' );
          },
        ),
      ),
    );
  }

  customPopularProductsItems(String productName){
    return Container(
      width: 165,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/speaker.png',
                  ),
                ),
              ),
            ),
            SizedBox(width:16,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(context, productName, textColor, 14.0, FontWeight.normal,
                      TextDecoration.none),
                  SizedBox(height: 8.0,),
                  text(context, 'USD 350', textColor, 12.0, FontWeight.bold,
                      TextDecoration.none),
                  SizedBox(height: sizedBoxHeight/2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star_rate, color: Color(0xbbEAAA00), size: 16.0,),
                          SizedBox(width: 4,),
                          text(context, '4.6', textColor, 10.0, FontWeight.normal, TextDecoration.none),
                          SizedBox(width: 8,),
                          text(context, '86 Reviews', textColor, 10.0, FontWeight.normal, TextDecoration.none),
                        ],
                      ),

                      Icon(
                        Icons.more_vert_outlined,
                        size: iconHeightWidth-4.0,
                        color: iconColor,
                      ),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





