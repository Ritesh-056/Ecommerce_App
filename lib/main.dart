import 'package:ecommerce_jenisha/components/custom_buttons.dart';
import 'package:ecommerce_jenisha/components/custom_sizedBox.dart';
import 'package:ecommerce_jenisha/components/custom_text.dart';
import 'package:ecommerce_jenisha/components/custom_text_field.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Custom Widget Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailController = new TextEditingController();
  var passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextField(
                hintText: 'Email',
                borderColor: Colors.green,
                controller: emailController,
                isPassword: false,
                prefixIcon: Icons.email,
                suffixIcon: Icons.person,
              ),
              CustomSizedBox(height: 10.0, width: 0.0),
              CustomTextField(
                  hintText: 'Password',
                  borderColor: Colors.green,
                  controller: passController,
                  isPassword: true,
                  prefixIcon: Icons.security_rounded,
                  suffixIcon: Icons.visibility_off),
              CustomSizedBox(height: 20.0, width: 0.0),
              CustomText(
                  text:
                      'You have pushed the button this many times:${context.watch<Counter>().count}',
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
              CustomSizedBox(height: 10.0, width: 0.0),
              CustomElevatedButton(
                text: 'Increment',
                textcolor: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                onPressed: () => context.read<Counter>().increment(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
