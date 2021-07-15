import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/components/theNightButtonComponent.dart';
import 'package:flutter_challenge_night/pages/homeScreen/homeScreen.dart';
import 'package:flutter_challenge_night/utils/style/themeColors.dart';
import 'package:flutter_challenge_night/viewModels/AppController.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    context.read<AppController>().getBiometry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ThemeColors.backgroundColor,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    bottom: MediaQuery.of(context).size.height * 0.1),
                child: Text(
                  "The Night",
                  style: GoogleFonts.bebasNeue(
                    color: ThemeColors.whiteColor,
                    fontSize: 54,
                  ),
                ),
              ),
              context.watch<AppController>().biometry == true
                  ? FingerTipAuth()
                  : TextAuth()
            ],
          ),
        ),
      ),
    );
  }
}

class TextAuth extends StatelessWidget {
  const TextAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(),
            ),
            TextFormField(
              decoration: InputDecoration(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
              child: TheNightButtonComponent(
                buttonText: "Login",
                buttonFuction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
              ),
            ),
            TheNightButtonComponent(
              buttonText: "Registrar",
              outlinedButton: true,
              buttonFuction: () =>
                  context.read<AppController>().setBiometry(true),
            ),
          ],
        ),
      ),
    );
  }
}

class FingerTipAuth extends StatelessWidget {
  const FingerTipAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.fingerprint,
            color: ThemeColors.whiteColor,
            size: MediaQuery.of(context).size.height * 0.3,
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0, right: 50.0, left: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: TheNightButtonComponent(
                    buttonText: "Login",
                    buttonFuction: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                  ),
                ),
                TheNightButtonComponent(
                  buttonText: "Login com e-mail",
                  outlinedButton: true,
                  buttonFuction: () =>
                      context.read<AppController>().setBiometry(false),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
