import 'package:flutter/material.dart';
import 'package:flutter_challenge_pickle/screens/searchScreen/search_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_code/simple_code.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            child: Center(
              child: GestureDetector(
                child: SvgPicture.asset(
                  "assets/Icons/Rick_and_Morty.svg",
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Align(
                    alignment: Alignment.topCenter, child: SearchComponent()),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personagens",
                        style: GoogleFonts.poppins(
                            color: Colors.green[600], fontSize: 16),
                      ),
                      Container(
                        height: sz(150),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(18),
                          children: [],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class SearchComponent extends StatelessWidget {
  const SearchComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 2)
            ]),
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              )),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.green,
                ),
              ),
              Text(
                "Como posso ajudar Rick?!",
                style: GoogleFonts.poppins(color: Colors.green, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
