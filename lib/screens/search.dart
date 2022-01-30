import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchItem extends StatefulWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  _SearchItemState createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  double iconHeightWidth = 24.0;
  Color iconColor = Colors.black;
  Color textColor = Colors.black;

  double sizedBoxHeight = 16.0;
  var products = ['TMA2 Wireless', 'Cable'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //row for top items
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
                    text(context, 'Search', textColor, 16, FontWeight.bold,
                        TextDecoration.none),
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
                //  implementation of search box
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                //close of search box
                SizedBox(
                  height: sizedBoxHeight,
                ),

                //starting of latest search containers
                text(context, 'Latest search', textColor, 16.0, FontWeight.normal,
                    TextDecoration.none),
                SizedBox(
                  height: sizedBoxHeight / 2,
                ),
                Container(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListTile(
                          trailing: Icon(
                            Icons.close,
                            size: iconHeightWidth,
                            color: iconColor,
                          ),
                          title: text(context, products[index], textColor, 14.0,
                              FontWeight.normal, TextDecoration.none),
                          leading: Icon(
                            Icons.schedule_outlined,
                            size: iconHeightWidth,
                            color: iconColor,
                          ),
                        );
                      }),
                ),

                //end of latest search container

                SizedBox(
                  height: sizedBoxHeight,
                ),

                //start of popular products container
                text(context, 'Popular product', textColor, 16, FontWeight.normal,
                    TextDecoration.none),
                SizedBox(
                  height: sizedBoxHeight ,
                ),
                Column(
                  children: [
                    customPopularProductsItems('TMA-2 Comfort Wireless '),
                    SizedBox(
                      height: sizedBoxHeight +8 ,
                    ),
                    customPopularProductsItems('TMA-2 DJ '),
                    SizedBox(
                      height: sizedBoxHeight +8,
                    ),
                    customPopularProductsItems('TMA-2 Move Wireless '),
                  ],
                )

              ], //close of column widget [main widget for wrapping children widgets]
            ),
          ),
        ),
      ),
    );
  }


  customPopularProductsItems(String productName){
   return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              image: DecorationImage(
                image: AssetImage(
                  'assets/speaker.png',
                ),
              ),
            ),
          ),
          SizedBox(width:16,),
          Container(
            width: MediaQuery.of(context).size.width - 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, productName, textColor, 16.0, FontWeight.normal,
                    TextDecoration.none),
                SizedBox(height: 8.0,),
                text(context, 'USD 270', textColor, 14.0, FontWeight.bold,
                    TextDecoration.none),
                SizedBox(height: sizedBoxHeight/2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_rate, color:Color(0xbbEAAA00), size: 16.0,),
                        SizedBox(width: 4,),
                        text(context, '4.6', textColor, 12.0, FontWeight.normal, TextDecoration.none),
                        SizedBox(width: 16,),
                        text(context, '86 Reviews', textColor, 12.0, FontWeight.normal, TextDecoration.none),
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
    );
  }
}
