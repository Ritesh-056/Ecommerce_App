import 'package:ecommerce_jenisha/const.dart';
import 'package:ecommerce_jenisha/screens/add_to_cart_overview.dart';
import 'package:ecommerce_jenisha/screens/cart_item_details.dart';
import 'package:ecommerce_jenisha/screens/home.dart';
import 'package:ecommerce_jenisha/screens/loginscreen.dart';
import 'package:ecommerce_jenisha/screens/search.dart';
import 'package:ecommerce_jenisha/screens/shopping_cart.dart';
import 'package:ecommerce_jenisha/screens/show_product_category.dart';
import 'package:ecommerce_jenisha/screens/signupscreen.dart';
import 'package:ecommerce_jenisha/screens/user_profile_screen.dart';
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
      initialRoute: '/login',
      routes: {
        '/login'    :  (context) => LoginScreen(),
        '/sign_up'  :  (context) => SignUpScreen(),
        '/home'     :  (context) => HomeScreen(),
        '/search'   :  (context) => SearchItem(),
        '/product_category' :  (context) => ShowProductCategory(),
        '/shopping_list_cart': (context) => ShoppingListCart(),
        '/cart_item_details' : (context) => CartShoppingItemDetails(),
        '/user_profile'  : (context)  => UserProfileScreen(),
        '/add_item_card_overview' :(context) => AddToCartItemOverview()
      },
      // home: LoginScreen(),
    );
  }
}
