import 'package:flutter/material.dart';

import 'package:flutter_challenge_destination/screens/homePage/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Destination',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: HomePage(),
    );
  }
}
