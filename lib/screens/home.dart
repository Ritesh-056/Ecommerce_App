import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,
                    size: 25.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color:primaryButtonColor,
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),                            image: DecorationImage(
                              image: AssetImage(
                                'assets/union.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        text(context, "Audio", Colors.black, 19.5,
                            FontWeight.bold, TextDecoration.none),
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/avatar.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      text(context, "Hi, Andrea", Colors.black, 16.0,
                          FontWeight.normal, TextDecoration.none),
                      SizedBox(
                        height: 8.0,
                      ),
                      text(
                          context,
                          "What are you looking for\ntoday ?",
                          Colors.black,
                          24.0,
                          FontWeight.bold,
                          TextDecoration.none),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size:20.0
                          ),
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
          ),


          Positioned(
            top: 270,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0))),
                child: Column(
                  children: [
                    // top items for grey background items
                    SizedBox(height:16.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: text(
                                    context,
                                    'Headphone',
                                    Colors.white,
                                    14.0,
                                    FontWeight.normal,
                                    TextDecoration.none),
                              ),
                              decoration: BoxDecoration(
                                color: primaryButtonColor,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 16.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text(
                                      context,
                                      'Headband',
                                      Colors.grey,
                                      14.0,
                                      FontWeight.normal,
                                      TextDecoration.none),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text(
                                      context,
                                      'Earpads',
                                      Colors.grey,
                                      14.0,
                                      FontWeight.normal,
                                      TextDecoration.none),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text(
                                      context,
                                      'Camera',
                                      Colors.grey,
                                      14.0,
                                      FontWeight.normal,
                                      TextDecoration.none),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text(
                                      context,
                                      'Camera',
                                      Colors.grey,
                                      14.0,
                                      FontWeight.normal,
                                      TextDecoration.none),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    // end of top items for grey background items
                    SizedBox(
                      height: 8.0,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: 300,
                                height: 178,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [

                                      Column(
                                        children: [
                                            SizedBox(height:16.0),
                                            text(
                                                      context,
                                                'TMA-2\nModular\nHeadphone',
                                                      Colors.black,
                                                      22.0,
                                                      FontWeight.bold,
                                                      TextDecoration.none),
                                          SizedBox(
                                            height: 16,
                                          ),

                                          Row(
                                            children: [

                                              text(
                                                  context,
                                                  'Shop now ',
                                                  primaryButtonColor,
                                                  14.0,
                                                  FontWeight.bold,
                                                  TextDecoration.none),

                                              SizedBox(
                                                width: 8.0,
                                              ),
                                              Icon(Icons.arrow_forward_sharp,
                                              color: primaryButtonColor,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox( width: 32,),
                                      Image.asset('assets/speaker.png')

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width: 300,
                                height: 178,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [

                                      Column(
                                        children: [
                                          SizedBox(height:16.0),
                                          text(
                                              context,
                                              'TMA-2\nModular\nHeadphone',
                                              Colors.black,
                                              22.0,
                                              FontWeight.bold,
                                              TextDecoration.none),
                                          SizedBox(
                                            height: 16,
                                          ),

                                          Row(
                                            children: [

                                              text(
                                                  context,
                                                  'Shop now ',
                                                  primaryButtonColor,
                                                  14.0,
                                                  FontWeight.bold,
                                                  TextDecoration.none),

                                              SizedBox(
                                                width: 8.0,
                                              ),
                                              Icon(Icons.arrow_forward_sharp,
                                                color: primaryButtonColor,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox( width: 32,),
                                      Image.asset('assets/speaker.png')

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width: 300,
                                height: 178,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [

                                      Column(
                                        children: [
                                          SizedBox(height:16.0),
                                          text(
                                              context,
                                              'TMA-2\nModular\nHeadphone',
                                              Colors.black,
                                              22.0,
                                              FontWeight.bold,
                                              TextDecoration.none),
                                          SizedBox(
                                            height: 16,
                                          ),

                                          Row(
                                            children: [
                                              text(
                                                  context,
                                                  'Shop now ',
                                                  primaryButtonColor,
                                                  14.0,
                                                  FontWeight.bold,
                                                  TextDecoration.none),

                                              SizedBox(
                                                width: 8.0,
                                              ),
                                              Icon(Icons.arrow_forward_sharp,
                                                color: primaryButtonColor,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox( width: 32,),
                                      Image.asset('assets/speaker.png')

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 32.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(context, "Featured Products", Colors.black, 16.0,
                              FontWeight.normal, TextDecoration.none),
                          text(context, "See All", Colors.grey, 14.0,
                              FontWeight.normal, TextDecoration.none),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 16.0,
                    ),

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
                              margin: EdgeInsets.only(left: 16.0),
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
                  ],
                ),
              ),
            ),
          )
        ],
      ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: primaryButtonColor,
            child: Icon(Icons.arrow_forward_ios_sharp, size: 20.0,),
            onPressed: (){
              Navigator.pushNamed(context, '/search' );
            },
          ),
    ));
  }
}
