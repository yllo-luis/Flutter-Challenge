import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestingButton extends StatelessWidget {
  final double width;
  final double height;
  final String buttonText;
  final Function buttonFunction;

  TestingButton(
      {required this.width,
      required this.height,
      required this.buttonText,
      required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => buttonFunction(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.green[600],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 2, blurRadius: 5)
            ]),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
