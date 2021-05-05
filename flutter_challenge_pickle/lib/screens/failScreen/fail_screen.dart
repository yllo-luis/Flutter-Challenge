import 'package:flutter/material.dart';

//Tela de erro do aplicativo
class FailScreen extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  FailScreen({required this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
