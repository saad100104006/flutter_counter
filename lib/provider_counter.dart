import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  /// counter for page 1
  int _counter1 = 0;

  int get counter1 => _counter1;

  set counter1(int value) {
    _counter1 = value;
    notifyListeners();
  }

  /// counter for page 2
  int _counter2 = 0;

  int get counter2 => _counter2;

  set counter2(int value) {
    _counter2 = value;
    notifyListeners();
  }

  /// counter for page 3
  int _counter3 = 0;

  int get counter3 => _counter3;

  set counter3(int value) {
    _counter3 = value;
    notifyListeners();
  }

  /// function to increment the counter based on page index
  void incrementCounterFromGeneralButton(int index) {
    if (index == 0) {
      counter1++;
    } else if (index == 1) {
      counter2++;
    } else if (index == 2) {
      counter3++;
    }
  }
}
