import 'package:flutter/material.dart';

class ExtrabuttonProvider extends ChangeNotifier {
  bool _showExtraButton = false;
  double _buttonHeight = 80;

  double get getHeight {
    return _buttonHeight;
  }

  bool get getExtraButton {
    return _showExtraButton;
  }

  void changeHeight60() {
    _buttonHeight = 60;
  }

  void changeHeight80() {
    _buttonHeight = 80;
  }

  void changeExtraButtonfalse() {
    _showExtraButton = false;
  }

  void changeExtraButtontrue() {
    _showExtraButton = true;
  }
}
