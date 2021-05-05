import 'package:flutter/material.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter_challenge_pickle/screens/startScreen/start_screen.dart';
import 'package:simple_code/simple_code.dart';

import 'package:flutter_challenge_pickle/screens/failScreen/fail_screen.dart';

void main() {
  //Opção de release para tratamento de erro
  CatcherOptions releaseMode = CatcherOptions(SilentReportMode(), []);

  //Opção de debug para tratamento de erro
  CatcherOptions debugMode =
      CatcherOptions(SilentReportMode(), [ConsoleHandler()]);

  //Tela de erro do aplicativo
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return FailScreen(
      errorDetails: errorDetails,
    );
  };

  Catcher(
      ensureInitialized: true,
      debugConfig: debugMode,
      releaseConfig: releaseMode,
      runAppFunction: () => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: SimpleCode.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'RickPedia',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: StartScreen(),
    );
  }
}
