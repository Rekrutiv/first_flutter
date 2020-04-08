import 'package:flutter/material.dart';
import 'dart:math'; //for the randomization

class ColorRandom with ChangeNotifier {
  Random random = new Random();
  int indexColor = 0;

  setRandomColor() {
    indexColor = random.nextInt(7);
    notifyListeners();
  }
}
