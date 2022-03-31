

import 'package:flutter/material.dart';

class Providers extends ChangeNotifier{
  bool value =false;

  changeValue(){
    value=true;
    notifyListeners();
  }
}