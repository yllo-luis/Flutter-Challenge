import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/pages/homeScreen/homeScreen.dart';
import 'package:flutter_challenge_night/pages/loginScreen/loginScreen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends ChangeNotifier {
  bool logedIn = false;

  void getLoginHistory() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    logedIn = pref.getBool('loged') ?? false;
    notifyListeners();
  }

  navigateToNextScreen(BuildContext context) {
    if (logedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }
}
