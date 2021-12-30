

import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                   child:Column(
                      children: [
                        SizedBox(height: 8.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.select_all),
                            Row(
                              children: [
                                Icon(Icons.ios_share),
                                SizedBox(
                                  width: 8.0,
                                ),
                                text(context, "Audio", Colors.black,
                                    14.0, FontWeight.normal, TextDecoration.none),
                              ],
                            ),

                            Container(
                              height:35,
                              width:35,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/audio.jpg',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(context, "Hi,Andrea", Colors.black,
                                  20.0, FontWeight.normal, TextDecoration.none),
                              SizedBox(height: 8.0,),
                              text(context, "What are you looking for today?", Colors.black,
                                  30.0, FontWeight.bold, TextDecoration.none),
                            ],
                          ),
                        ),

                        SizedBox(height: 16.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.search,color: Colors.grey,),
                                  SizedBox(width: 8.0,),
                                  text(context, "Search headphone", Colors.grey,
                                      20.0, FontWeight.normal, TextDecoration.none),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ),
                ),
              ],
            ),
    ));
  }
}
