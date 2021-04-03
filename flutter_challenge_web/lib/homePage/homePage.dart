import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_web/desktopHomePage/desktopHomePage.dart';
import 'package:flutter_challenge_web/phoneHomePage/phoneHomePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024 &&
            (defaultTargetPlatform == TargetPlatform.windows ||
                defaultTargetPlatform == TargetPlatform.linux ||
                defaultTargetPlatform == TargetPlatform.macOS)) {
          //Estou em um desktop
          return DesktopHomePage();
        } else {
          return PhoneHomePage();
        }
      },
    );
  }
}
