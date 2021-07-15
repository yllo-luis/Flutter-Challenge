import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/pages/loginScreen/loginScreen.dart';
import 'package:flutter_challenge_night/viewModels/AppController.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_challenge_night/components/theNightButtonComponent.dart';
import 'package:flutter_challenge_night/utils/style/themeColors.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "The Night",
          style: GoogleFonts.bebasNeue(color: ThemeColors.whiteColor),
        ),
        backgroundColor: ThemeColors.backgroundAltColor,
      ),
      body: Container(
        color: ThemeColors.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32.0, left: 32.0, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Biometria",
                    style: TextStyle(
                        color: ThemeColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Switch(
                    onChanged: (value) =>
                        Provider.of<AppController>(context, listen: false)
                            .setBiometry(value),
                    value: context.watch<AppController>().biometry,
                    activeColor: ThemeColors.accentColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 56, left: 56, bottom: 50),
              child: TheNightButtonComponent(
                buttonFuction: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                ),
                buttonText: "Sair",
              ),
            )
          ],
        ),
      ),
    );
  }
}
