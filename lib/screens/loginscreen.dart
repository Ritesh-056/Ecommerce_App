import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/components/custom_text_field.dart';
import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/screens/signupscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
            top: 400,
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
                    height: 20.0,
                  ),
                  text(context, "Forget Password", textColor, 14.0,
                      FontWeight.bold, TextDecoration.none),
                  SizedBox(
                    height: 36.0,
                  ),
                  CustomElevatedButton(
                      text: 'Sign In',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      onPressed: () {
                        flutterToast("Button Clicked! Successful");
                        Navigator.pushNamed(context, '/home');
                      }),
                  SizedBox(
                    height: 26.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(context, "Didn't have any account?", textColor, 14.0,
                          FontWeight.normal, TextDecoration.none),
                      SizedBox(
                        width: 8.0,
                      ),
                      GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                          Navigator.pushNamed(context,'/sign_up');
                          },
                        child: text(context, "Sign Up here", primaryButtonColor, 14.0,
                            FontWeight.bold, TextDecoration.underline),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
