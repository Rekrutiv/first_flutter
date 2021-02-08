import 'package:flutter/material.dart';

class SizeProvider with ChangeNotifier {
  double sizeShape = 0;

  void increment() {
    sizeShape=sizeShape+30;
    notifyListeners();
  }
//  setSize() {
//    sizeShape  = sizeShape;
//    notifyListeners();
//  }
}
