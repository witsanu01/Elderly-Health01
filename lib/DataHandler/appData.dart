import 'package:Elderly/models/address.dart';
import 'package:flutter/cupertino.dart';

class AppData extends ChangeNotifier
{
  Address pickUpLocation;
  void updatePickUplocationAddress(Address pickUpAddress)
  {
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }
}