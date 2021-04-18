import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final String assetPath;
  final String locationName;
  final String placeName;

  HomePageCard(
      {@required this.assetPath,
      @required this.locationName,
      @required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: AssetImage(assetPath)),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 0)
          ]),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 4),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text(
                    locationName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  subtitle: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 0, left: 0, right: 0),
                        child: Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 0, right: 0, left: 0),
                        child: Text(
                          placeName,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
