import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String assetPath;
  final String placeName;

  const DetailsPage(
      {Key key, @required this.assetPath, @required this.placeName})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.assetPath), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(76, 114, 66, 0.4),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromRGBO(0, 38, 27, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(76, 114, 66, 0.4),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Icon(
                        Icons.favorite_border,
                        color: Color.fromRGBO(0, 38, 27, 1.0),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
