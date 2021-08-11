// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:examination/ui/data.dart';
import 'package:examination/ui/travel_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool colorPicker = false;
  TabController? _tabController;
  bool switcher = false;

  List<Color> color1 = [
    Colors.grey.shade300,
    Colors.grey.shade300,
    Colors.grey.shade300,
    Colors.grey.shade300,
    Colors.grey.shade300,
    Colors.grey.shade300
  ];

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Color(0xf7f7f7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // PAGE
            Container(
              color: switcher ? Colors.black54 : Colors.grey.shade50,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 6 / 7,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // PAGE #1
                  SafeArea(
                    child: Column(
                      children: [
                        ////////////////////
                        // HEADER #1: FIND TYPES OF YOUR TRAVEL
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // TITLE
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Find types",
                                                style: TextStyle(
                                                  fontSize: 30.0,
                                                  //fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "of your travel",
                                                style: TextStyle(
                                                    fontSize: 30.0,
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // SEARCH BUTTON
                                    Container(
                                      child: InkWell(
                                        child: Container(
                                          height: 65.0,
                                          width: 65.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(width: 0.000001),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(18.0),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        ////////////////////
                        // ListView #1
                        Container(
                          height: 150,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      colorPicker = !colorPicker;
                                      if (colorPicker) {
                                        color1[index] = Colors.amberAccent;
                                      } else {
                                        color1[index] = Colors.grey.shade300;
                                      }
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      right: 12.0,
                                      top: 12.0,
                                      left: 12.0,
                                      bottom: 25.0),
                                  margin: const EdgeInsets.only(
                                      left: 20.0, top: 10.0, bottom: 10.0),
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: color1[index],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(38.0),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        child: Data().catIcons[index],
                                        radius: 28.0,
                                        backgroundColor: Colors.white,
                                      ),
                                      Text(Data().catNames[index]),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        ////////////////////
                        // HEADER #2: FOR YOU
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20.0),
                              height: 40,
                              child: const Text(
                                "For you",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),

                        ////////////////////
                        // ListView #2

                        Container(
                          height: 350,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                width: 220,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  Data().citiesImage[index],
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30.0))),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 20.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(Data().citiesNames[index],
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ],
                                            ),
                                            Container(
                                                child: Data().routes1[index]),
                                            Container(
                                                child: Data().routes2[index]),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(30.0),
                                            bottomRight: Radius.circular(30.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: const [
                                                  Text("> May, 24"),
                                                  Text("< June, 26"),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (contex) =>
                                                              TravelDetails(
                                                            Data().citiesNames[
                                                                index],
                                                            Data().citiesId[
                                                                index],
                                                            Data().citiesImage[
                                                                index],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child:
                                                        const Text("Details"),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // PAGE #2
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Center(child: Text("This is Notification Page")),
                  ),

                  // PAGE #3
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: SwitchListTile(
                        title: const Text("Light Mode / Dark Mode"),
                        onChanged: (e) {
                          setState(() {
                            switcher = e;
                          });
                        },
                        value: switcher,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //////////////////////
            // TabBar
            Container(
              color: switcher ? Colors.black54 : Colors.white38,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 7,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    )),
                child: TabBar(
                  indicatorWeight: 0.000000000000000000001,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Icon(Icons.explore),
                    ),
                    Tab(
                      child: Icon(Icons.notifications),
                    ),
                    Tab(
                      child: Icon(Icons.person),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
