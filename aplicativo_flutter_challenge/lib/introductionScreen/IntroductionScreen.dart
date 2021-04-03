import 'package:flutter/material.dart';
import 'package:aplicativo_flutter_challenge/signUpScreen/signUpScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple.shade700, Colors.pink.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white),
                    text: "",
                    children: [
                  TextSpan(
                      text: "Welcome to\n",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  TextSpan(
                      text: "ZEEBS\n",
                      style: TextStyle(color: Colors.white, fontSize: 50)),
                  TextSpan(text: "The shopping app you needed")
                ])),
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/logos/appLogo.svg",
              width: 150,
              height: 150,
              color: Colors.white,
            )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    )),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5,
                            spreadRadius: 0)
                      ]),
                  child: Center(
                      child: Material(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.pink.shade300,
                          fontSize: 18,
                          decoration: TextDecoration.none),
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white)),
                child: Center(
                    child: Material(
                  color: Colors.transparent,
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none),
                  ),
                )),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        )
      ]),
    );
  }
}
