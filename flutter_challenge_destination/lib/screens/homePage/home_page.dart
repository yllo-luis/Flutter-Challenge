import 'package:flutter/material.dart';

import 'package:flutter_challenge_destination/components/drawer_component.dart';
import 'package:flutter_challenge_destination/components/home_page_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 4, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/dave-goudreau-JhdjxaBvj4k-unsplash.jpg",
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SafeArea(
              child: CircleAvatar(
                radius: 45,
                backgroundImage:
                    AssetImage("assets/dave-goudreau-JhdjxaBvj4k-unsplash.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Text(
                  "Hello, Dave!",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
                ),
              ),
            ),
            Divider(
              color: Colors.green[700],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.72,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 12),
                children: [
                  DrawerComponent(titleText: "Profile", icon: Icons.person),
                  DrawerComponent(
                      titleText: "Favorite destinations", icon: Icons.star),
                  DrawerComponent(titleText: "Settings", icon: Icons.settings),
                  DrawerComponent(titleText: "Friends", icon: Icons.person_pin),
                  DrawerComponent(titleText: "About", icon: Icons.info),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "A trip you'll\nnever ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 42)),
                    TextSpan(
                        text: "forget.",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 42))
                  ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 232, 232, 95),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Icon(
                            Icons.search,
                            color: Colors.green[700],
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "Search your destination"),
                  ),
                ),
              ),
              TabBar(
                  controller: _controller,
                  labelColor: Colors.green[700],
                  unselectedLabelColor: Colors.green[900],
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "New",
                    ),
                    Tab(
                      text: "Popular",
                    ),
                    Tab(
                      text: "Top 10",
                    )
                  ]),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                child: TabBarView(controller: _controller, children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/jakob-rosen-XUO119OlcEU-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/daniela-izotenko-hOhlYhAiizc-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/charly-pn-57-x9zCyXJo-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/jakob-rosen-XUO119OlcEU-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/daniela-izotenko-hOhlYhAiizc-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/charly-pn-57-x9zCyXJo-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/jakob-rosen-XUO119OlcEU-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/daniela-izotenko-hOhlYhAiizc-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/charly-pn-57-x9zCyXJo-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/jakob-rosen-XUO119OlcEU-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/daniela-izotenko-hOhlYhAiizc-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: HomePageCard(
                            assetPath:
                                "assets/Destinations/charly-pn-57-x9zCyXJo-unsplash.jpg",
                            locationName: "A Grande montanha",
                            placeName: "Argentina"),
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
