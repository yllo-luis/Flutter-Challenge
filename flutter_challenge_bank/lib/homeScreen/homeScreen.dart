import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.blue[900],
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Bem-vinde\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20)),
                          TextSpan(
                              text: "Anne",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24))
                        ]),
                      ),
                      FloatingActionButton(
                        onPressed: () => null,
                        backgroundColor: Colors.indigo[50],
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(40)),
                  child: FlutterLogo(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                      // APENAS VALORES ENTRE 1.0 E 0.0 SÃO VALIDOS
                      color: Colors.indigo[50].withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 1,
                            blurRadius: 5)
                      ]),
                  child: Center(
                    child: Text(
                      "Extrato",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                      // APENAS VALORES ENTRE 1.0 E 0.0 SÃO VALIDOS
                      color: Colors.indigo[50].withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 1,
                            blurRadius: 5)
                      ]),
                  child: Center(
                    child: Text(
                      "Investimentos",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
