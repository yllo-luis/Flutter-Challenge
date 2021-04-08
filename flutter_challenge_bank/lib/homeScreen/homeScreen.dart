import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_challenge_bank/components/gridComponent.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showScore = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.9;
    final double itemWidth = size.width / 2;

    return SafeArea(
      child: Material(
        child: Container(
            color: Colors.blue[900],
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Saldo disponível\n\n",
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                                TextSpan(
                                    text: showScore == true
                                        ? "5.720,87"
                                        : "******",
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold))
                              ])),
                              IconButton(
                                icon: showScore == true
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.blue[900],
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.blue[900],
                                      ),
                                onPressed: () => setState(() {
                                  showScore = !showScore;
                                }),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 22.0,
                                    childAspectRatio: (itemWidth / itemHeight)),
                            shrinkWrap: true,
                            children: [
                              GridComponent(
                                containerName: "Pix",
                                imageIcon: Padding(
                                  padding: EdgeInsets.all(10),
                                  child:
                                      SvgPicture.asset("assets/icons/pix.svg"),
                                ),
                              ),
                              GridComponent(
                                containerName: "Pagar",
                                imageIcon: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                      "assets/icons/barcode.svg"),
                                ),
                              ),
                              GridComponent(
                                containerName: "Transferir",
                                imageIcon: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                      "assets/icons/transfer.svg"),
                                ),
                              ),
                              GridComponent(
                                containerName: "Cartão de credito",
                                imageIcon: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                      "assets/icons/credit-card.svg"),
                                ),
                              ),
                              GridComponent(
                                containerName: "Bloquear cartão",
                                imageIcon: Padding(
                                  padding: EdgeInsets.all(10),
                                  child:
                                      SvgPicture.asset("assets/icons/lock.svg"),
                                ),
                              ),
                              GridComponent(
                                containerName: "Ajuda",
                                icon: Icons.help,
                              ),
                            ],
                          ),
                        )
                      ],
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
      ),
    );
  }
}
