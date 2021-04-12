import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_web_taskia/components/homeCardComponent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 52),
                  child: Text("Taskia",
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 82, 95, 251),
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                ),
                Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 52),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Color.fromARGB(255, 82, 95, 251),
                            width: 0.5)),
                    child: Center(
                      child: Text(
                        "Try it free",
                        style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 82, 95, 251),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          HomeScreenComponent(),
          HomeScreenComponentTasks(),
          HomeScreenComponentTeam(),
          HomeScreenComponentTalkWithUs()
        ]),
      ),
    ));
  }
}

class HomeScreenComponentTalkWithUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(255, 223, 211, 1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get better work done",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "See why millions of people across 195 countries use Dash.",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 200,
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Name@company.com"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 82, 95, 251),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Try it free",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenComponentTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 350,
            width: 620,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Seamless Team Workflow & Efficient\n\n",
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      TextSpan(
                          text:
                              "Do you waste time organizing sticky notes, searching your email"
                              "and apps for to-dos, and figuring out what to work on first? "
                              "Then you need one solution to prioritize your tasks, manage"
                              "your time, and meet your deadlines.",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/PNG/Imagem 6.png"),
                    Image.asset("assets/icons/PNG/Imagem 9.png")
                  ],
                )
              ],
            ),
          ),
          Image.asset(
            "assets/icons/PNG/Imagem 7.png",
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width * 0.50,
          )
        ],
      ),
    );
  }
}

class HomeScreenComponentTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(255, 223, 211, 1.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: Text(
                "Featured Service that We Provide",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 458),
            child: Align(
              alignment: Alignment.centerLeft,
              child: HomeCardComponent(
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.width * 0.15,
                color: Color.fromRGBO(251, 128, 82, 1.0),
                image: SvgPicture.asset(
                  "assets/icons/SVG/Group 340.svg",
                  fit: BoxFit.contain,
                ),
                text: "Keep tasks in one place",
                subText: "Save time, avoid losing work and"
                    "information, delegate, and track tasks to"
                    "stay on schedule",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 102.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: HomeCardComponent(
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width * 0.15,
                color: Color.fromRGBO(123, 172, 111, 1.0),
                image: SvgPicture.asset(
                  "assets/icons/SVG/Group 339.svg",
                  fit: BoxFit.contain,
                ),
                text: "Keep tasks in one place",
                subText: "Save time, avoid losing work and"
                    "information, delegate, and track tasks to"
                    "stay on schedule",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 458),
            child: Align(
              alignment: Alignment.centerRight,
              child: HomeCardComponent(
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width * 0.15,
                color: Color.fromRGBO(255, 160, 0, 1.0),
                image: SvgPicture.asset(
                  "assets/icons/SVG/Group 335.svg",
                  fit: BoxFit.contain,
                ),
                text: "Keep tasks in one place",
                subText: "Save time, avoid losing work and"
                    "information, delegate, and track tasks to"
                    "stay on schedule",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenComponent extends StatelessWidget {
  const HomeScreenComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(50),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 350,
            width: 620,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Task Management and lists tool\n\n",
                          style: GoogleFonts.poppins(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      TextSpan(
                          text:
                              "We believe that designing products and services in close"
                              "partnership with our clients is the only way to have a real"
                              "impact on their business.",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Name@company.com"),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 82, 95, 251),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Try it free",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SvgPicture.asset(
            "assets/icons/SVG/Image 5.svg",
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width * 0.50,
          )
        ],
      ),
    );
  }
}
