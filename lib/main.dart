import 'package:ecommerce_jenisha/screens/home.dart';
import 'package:ecommerce_jenisha/screens/loginscreen.dart';
import 'package:ecommerce_jenisha/screens/search.dart';
import 'package:ecommerce_jenisha/screens/show_product_category.dart';
import 'package:ecommerce_jenisha/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counterProvider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        backgroundColor: Colors.green,
      ),
      initialRoute: '/product_category',
      routes: {
        '/login'    :  (context) => LoginScreen(),
        '/sign_up'  :  (context) => SignUpScreen(),
        '/home'     :  (context) => HomeScreen(),
        '/search'   :  (context) => SearchItem(),
        '/product_category' :  (context) => ShowProductCategory()
      },
      // home: LoginScreen(),
    );
  }
}
