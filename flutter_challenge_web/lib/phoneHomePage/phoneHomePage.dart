import 'package:flutter/material.dart';

class PhoneHomePage extends StatefulWidget {
  @override
  _PhoneHomePageState createState() => _PhoneHomePageState();
}

class _PhoneHomePageState extends State<PhoneHomePage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.amber[100],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      child: isExpanded == false
                          ? Center(
                              child: GestureDetector(
                              onTap: () => setState(() {
                                isExpanded = !isExpanded;
                              }),
                              child: Icon(Icons.arrow_drop_down),
                            ))
                          : Center(
                              child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              color: Colors.amber[50],
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Text(
                                      "Ínicio",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Galeria",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Contato",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 1,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2,
                                        )
                                      ]),
                                    )
                                  ]),
                            )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "PUPPY",
                    style: TextStyle(
                        color: Colors.orange[900],
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Chegou o momento de adicionar\num novo membro na familia!",
                    style: TextStyle(color: Colors.orange[900], fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/images/dog.png",
                    ),
                  )
                ],
              ),
            ))));
  }
}
