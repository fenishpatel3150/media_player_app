import 'package:flutter/cupertino.dart';

class image_provider extends ChangeNotifier
{
  int index=0;

  void color(int value)
  {
    index=value;
    notifyListeners();
  }

}