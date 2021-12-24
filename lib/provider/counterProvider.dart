import 'package:flutter/widgets.dart';

class Counter with ChangeNotifier {
  int count = 0;
 

  void increment() {
    count++;
    notifyListeners();
  }
}
