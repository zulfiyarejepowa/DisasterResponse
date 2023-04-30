import 'package:flutter/cupertino.dart';

class ProviderData extends ChangeNotifier{
  int _a = 0;
  get a => _a;

  void onChangeCount(){
    if(_a == 2){
      _a = 0;
    } else{
      _a++;
    }
    notifyListeners();
  }

  void clickCount(int a){
    _a = a;
    notifyListeners();
  }

}