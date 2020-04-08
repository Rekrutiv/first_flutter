import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  int mainText = 0;

  void increment() {
    mainText++;
    notifyListeners();
  }
}
