import 'package:flutter/material.dart';
import 'package:flutter_challenge_night/utils/style/themeColors.dart';

class TheNightButtonComponent extends StatelessWidget {
  final String buttonText;
  final Function buttonFuction;
  final bool outlinedButton;

  const TheNightButtonComponent(
      {Key? key,
      required this.buttonText,
      required this.buttonFuction,
      this.outlinedButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => buttonFuction(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: outlinedButton == false
                ? ThemeColors.whiteColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: outlinedButton == false
                    ? Colors.transparent
                    : ThemeColors.whiteColor)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: outlinedButton == false
                    ? ThemeColors.backgroundAltColor
                    : ThemeColors.whiteColor,
                fontSize: 22),
          ),
        ),
      ),
    );
  }
}
