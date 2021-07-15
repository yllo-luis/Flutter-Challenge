import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/pages/homeScreen/homeScreen.dart';
import 'package:flutter_challenge_night/viewModels/splashController.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_challenge_night/utils/style/themeColors.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    Provider.of<SplashController>(context, listen: false).getLoginHistory();
    timer = Timer(Duration(seconds: 5), () => navigateToScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ThemeColors.backgroundColor,
              ThemeColors.backgroundAltColor,
              ThemeColors.accentColor
            ],
          ),
        ),
        child: Center(
          child: Text(
            "The Night",
            style: GoogleFonts.bebasNeue(
                color: ThemeColors.whiteColor,
                fontSize: 54,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void navigateToScreen() async {
    Provider.of<SplashController>(context, listen: false)
        .navigateToNextScreen(context);
  }
}
