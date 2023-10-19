import 'package:flutter/cupertino.dart';

class Myprovider
    extends ChangeNotifier // this class extends from change notifer that lisen to any change and aply the change to other pages
{
  String? IsoCode; // the thing that will be changed

  void changelanguage(
      String LangCode) // method that take paramiter which will be changed
  {
    IsoCode =
        LangCode; // assign the changed parameter to the variaple i want to change
    notifyListeners(); // call notifyListeners method to notify the other pages by the new change in the variaple (IsocCode)
  }
}
