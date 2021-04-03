import 'package:flutter/material.dart';
import 'package:aplicativo_flutter_challenge/introductionScreen/IntroductionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenge',
      theme: ThemeData(
        accentColor: Colors.pink.shade300,
        primarySwatch: Colors.pink,
      ),
      home: IntroductionScreen(),
    );
  }
}
