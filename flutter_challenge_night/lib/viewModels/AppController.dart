import 'dart:io';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:local_auth/local_auth.dart';

class AppController extends ChangeNotifier {
  bool biometry = true;

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

  Future<bool> authMeIn() async {
    LocalAuthentication auth = LocalAuthentication();
    bool authIsSupported = await auth.isDeviceSupported();

    bool logIn = false;

    if (authIsSupported == true) {
      logIn = await auth.authenticate(
          localizedReason: "Sua digital é necessária para autenticar :3",
          biometricOnly: true);

      await setLoginBool(true);
    }

    return logIn;
  }

  Future<void> setLoginBool(bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("loged", value);
  }
}
