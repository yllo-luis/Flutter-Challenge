import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppController extends ChangeNotifier {
  late bool biometry;

  Future<void> getBiometry() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    biometry = pref.getBool("biometry") ?? false;
    notifyListeners();
  }

  Future<void> setBiometry(bool value) async {
    biometry = value;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("biometry", value);
    notifyListeners();
  }
}
