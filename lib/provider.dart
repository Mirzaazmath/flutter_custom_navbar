import 'package:flutter/cupertino.dart';

class pagechange with ChangeNotifier{
  int _newinde=0;
  get newindex=>_newinde;
  void changeindex(int index){
    _newinde=index;
    notifyListeners();
  }
}