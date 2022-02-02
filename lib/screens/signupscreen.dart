import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/components/custom_text_field.dart';
import 'package:ecommerce_jenisha/const.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/audio.jpg',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // color: Colors.green.withOpacity(0.2)
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      colorLinear.withOpacity(0.6),
                      blackLinear.withOpacity(0.5),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          Positioned(
            top: 100,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  text(context, "Audio", textColor, 48.0, FontWeight.bold,
                      TextDecoration.none),
                  SizedBox(
                    height: 12,
                  ),
                  text(context, "It's modular and designed to last", textColor,
                      14.0, FontWeight.normal, TextDecoration.none),
                  // Text("Audio", style: TextStyle(color: Colors.white),),
                  // Text("It's modular and designed to last", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  CustomTextField(
                    prefixIcon: Icons.email,
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  CustomTextField(
                    prefixIcon: Icons.lock,
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  CustomElevatedButton(
                      text: 'Sign Up',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      onPressed: () {
                        Navigator.pushNamed(context, '/search');
                        flutterToast("Button Clicked! Successful");
                      }),
                  SizedBox(
                    height: 26.0,
                  ),
                  //icon containers row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: containerIconHeight,
                          width: containerIconWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            
                          ),
                           child: Image.asset('assets/apple.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: containerIconHeight,
                          width: containerIconWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/facebook.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: containerIconHeight,
                          width: containerIconWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/google.png'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(context, "If you have an account?", textColor, 14.0,
                          FontWeight.normal, TextDecoration.none),
                      SizedBox(
                        width: 8.0,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: text(context, "Sign In here", primaryButtonColor, 14.0,
                            FontWeight.bold, TextDecoration.underline),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryButtonColor,
          child: Icon(Icons.arrow_forward_ios_sharp, size: 20.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/home' );
          },
        ),
      ),
    );
  }
}
