import 'package:flutter/material.dart';

class TravelersComponent extends StatelessWidget {
  final String assetName;
  final String personName;

  TravelersComponent({@required this.assetName, @required this.personName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(assetName),
              ),
            ),
          ),
          // Essa definitivamente é uma gambiarra
          Padding(
            padding:
                const EdgeInsets.only(left: 56, right: 0, top: 10, bottom: 0),
            child: Container(
              width: 50,
              height: 50,
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.green[900],
                  ),
                  Text(
                    "2.5 K",
                    style: TextStyle(color: Colors.green[900]),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                personName,
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
