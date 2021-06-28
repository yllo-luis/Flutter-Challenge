import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/pages/splashScreen/splashScreen.dart';

import 'package:provider/provider.dart';

import 'package:flutter_challenge_night/viewModels/splashScreenController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashScreenController(),
        )
      ],
      child: MaterialApp(
        title: 'The night',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
