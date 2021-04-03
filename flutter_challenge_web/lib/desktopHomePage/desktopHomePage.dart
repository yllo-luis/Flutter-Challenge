import 'package:flutter/material.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.amber[100]),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.10,
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(color: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Olha cliquei no inicio!")));
                    },
                    child: Text(
                      "Inicio",
                      style: TextStyle(color: Colors.orange[900], fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Olha cliquei na galeria!")));
                    },
                    child: Text(
                      "Galeria",
                      style: TextStyle(color: Colors.orange[900], fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Olha cliquei na contato!")));
                    },
                    child: Text("Contato",
                        style:
                            TextStyle(color: Colors.orange[900], fontSize: 22)),
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(500),
                        bottomLeft: Radius.zero,
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                      ),
                      color: Colors.amber[50]),
                  child: Stack(
                    children: [
                      Positioned.fill(
                          bottom: 150,
                          right: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "PUPPY\n",
                                    style: TextStyle(
                                      color: Colors.orange[900],
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text:
                                        "Chegou o momento de adicionar\num novo membro na familia!",
                                    style: TextStyle(
                                        color: Colors.orange[900],
                                        fontSize: 16))
                              ]),
                            ),
                          )),
                      Positioned.fill(
                        bottom: MediaQuery.of(context).size.height * 0.20,
                        right: MediaQuery.of(context).size.width * 0.05,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () => ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Text("Adotei um doguinho"))),
                              child: Container(
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.amber[900],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          offset: Offset.zero,
                                          color: Colors.black38)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "Adote!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ))),
          Positioned.fill(
              left: MediaQuery.of(context).size.width * 0.50,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height * 0.60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      topLeft: Radius.circular(500),
                      topRight: Radius.zero,
                    ),
                    color: Colors.amber[500],
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset("assets/images/dog.png"),
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
