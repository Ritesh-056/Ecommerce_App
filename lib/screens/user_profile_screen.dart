
import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/functions/functions.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/rendering.dart';


 class UserProfileScreen extends StatefulWidget{


  @override
   _UserProfileScreenState createState() => _UserProfileScreenState();
 }


 class _UserProfileScreenState extends State<UserProfileScreen>{
   final double paddingSize = 16.0;
   final Color textColor = Colors.black;
   final Color iconColor = Colors.black;
   final double iconHeightWidth = 24.0;
   late EdgeInsets edgeInsetsPadding;
   final double sizedBoxHeightWidth = 16.0;

  @override
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size ;
    edgeInsetsPadding = EdgeInsets.symmetric(horizontal: paddingSize);


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
           height: size.height,
           width: size.width,
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             physics: ScrollPhysics(),
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
                         Icons.arrow_back_ios,
                         size: iconHeightWidth,
                         color: iconColor,
                       ),
                       Spacer(),   // it holds the space between icon and text here
                       text(context, 'Profile', textColor, 16.0,
                           FontWeight.bold, TextDecoration.none),
                       Spacer(),
                     ], //close of row for top items
                   ),
                 ),
                 addVerticalSpace(sizedBoxHeightWidth *2),
                Padding(
                    padding: edgeInsetsPadding,
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/Avatar.png',
                            width: 75,
                            height: 75,
                          ),
                        ),
                        addHorizontalSpace(sizedBoxHeightWidth *2),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(context, 'Andrea Hirata', textColor, 16.0, FontWeight.normal,
                                  TextDecoration.none),
                              addVerticalSpace(sizedBoxHeightWidth /2),
                              text(context, 'hirata@gmail.com', Colors.grey, 14.0, FontWeight.normal,
                                  TextDecoration.none),
                            ],
                          ),
                        )
                      ],
                    ),
                ),

                 addVerticalSpace(sizedBoxHeightWidth + (sizedBoxHeightWidth/2)),
                 addDivider(),


                 //starting or General
                 addVerticalSpace(sizedBoxHeightWidth),
                 Padding(
                   padding: edgeInsetsPadding,
                   child: text(context, 'General', Colors.grey, 14.0, FontWeight.normal,
                       TextDecoration.none),
                 ),
                 addVerticalSpace(sizedBoxHeightWidth),

                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     'Edit Profile', 'Notifications','Whishlist'
                   ].map((text) => Items(text)).toList(),
                 ),




                 //starting of legal

                 addVerticalSpace(sizedBoxHeightWidth),
                 Padding(
                   padding: edgeInsetsPadding,
                   child: text(context, 'Legal', Colors.grey, 14.0, FontWeight.normal,
                       TextDecoration.none),
                 ),
                 addVerticalSpace(sizedBoxHeightWidth),

                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     'Terms of Use', 'Privacy Policy'
                   ].map((text) => Items(text)).toList(),
                 ),



                 //starting of personal

                 addVerticalSpace(sizedBoxHeightWidth),
                 Padding(
                   padding: edgeInsetsPadding,
                   child: text(context, 'Personal', Colors.grey, 14.0, FontWeight.normal,
                       TextDecoration.none),
                 ),
                 addVerticalSpace(sizedBoxHeightWidth),

                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     'Report a Bug', 'Logout'
                   ].map((text) => Items(text)).toList(),
                 ),
               ],
             ),
           ),
        ),
      ),
    );
  }


 Widget addDivider(){
    return  Divider(
      color: Colors.grey,
    );
  }


  Widget Items(String inputText){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(sizedBoxHeightWidth/2),
        Padding(
          padding: edgeInsetsPadding,
          child: GestureDetector(
            onTap: (){
              flutterToast('Clicked Item ===> $inputText');
            },
            child: text(context,inputText,textColor, 16.0, FontWeight.normal,
                TextDecoration.none),
          ),
        ),
        addVerticalSpace(sizedBoxHeightWidth/2),
        addDivider(),
      ],
    );
  }
}