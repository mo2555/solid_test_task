import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color _backgroundColor = Colors.white;

  Color get backgroundColor => _backgroundColor;

  void generateRandomColor() {
    _backgroundColor = Color.fromRGBO(
      _generateRandomNumber(),
      _generateRandomNumber(),
      _generateRandomNumber(),
      _generateOpacity(),
    );
    notifyListeners();
  }

  int _generateRandomNumber() {
    return Random().nextInt(256);
  }

  double _generateOpacity() {
    return Random().nextDouble();
  }
}
