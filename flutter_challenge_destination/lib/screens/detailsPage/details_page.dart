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
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                          child: IconButton(
                              icon: Icon(
                                isFavorite == false
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: isFavorite == false
                                    ? Color.fromRGBO(0, 38, 27, 1.0)
                                    : Colors.white60,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Favoritado :3")));
                              })),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.placeName + "\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Argentina",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consetetur"
                      "sadipscing elitr, sed diam nonumy eirmod"
                      "tempor invidunt ut labore et dolore magna"
                      "aliquyam erat.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            child: Text(
                              "\$550 (7 Days)",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => ScaffoldMessenger.of(context)
                                .showSnackBar(
                                    SnackBar(content: Text("Comprei :3"))),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            child: Text(
                              "Book now",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => ScaffoldMessenger.of(context)
                                .showSnackBar(
                                    SnackBar(content: Text("Reservei :3"))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
