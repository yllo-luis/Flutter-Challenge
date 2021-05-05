import 'package:flutter/material.dart';
import 'package:flutter_challenge_pickle/screens/homeScreen/home_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:simple_code/simple_code.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/appIcon/pickle.png",
              width: 200,
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "RickPedia",
                style: GoogleFonts.poppins(
                    color: Colors.green[700],
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FloatingActionButton.extended(
                icon: Icon(Icons.arrow_forward_ios),
                elevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                label: Text("Continuar"),
                // TODO: ISSO CLARAMENTE ESTÁ ERRADO?!?!?!?!?
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomeScreen(key: SimpleCode.navigatorKey),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
