// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchcontroller = TextEditingController();
  Color bookmarkColor = Colors.green; // Initial
  void toggleBookmarkColor() {
    setState(() {
      bookmarkColor = bookmarkColor == Colors.grey ? Colors.green : Colors.grey;
    });
  }

  List<String> title = [
    "Trending outliers",
    "Booming Financial",
    "Value Picker",
    "Strong TMT",
    "Vehicle Cell",
    "Trending Outliers",
    "Trending Outliers"
  ];
  List<String> description = [
    "Quantitative Strategy",
    "Thematic Strategy",
    "Fundamental Strategy",
    "Long term Idea",
    "Short term Idea",
    "Quantitative Strategy",
    "Quantitative Strategy"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(children: [
            SizedBox(
              height: 51,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2136),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 12.8, color: Color(0xFFEBECEC)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search by stock Name, Patterns...",
                      hintStyle: TextStyle(color: Colors.white54),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Center(
                        child: Text("All",
                            style: TextStyle(
                                fontSize: 12.8, color: Color(0xFFEBECEC)))),
                    width: 80,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2136),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xFFA3A5A7))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Center(
                        child: Text("Ideas",
                            style: TextStyle(
                                fontSize: 12.8, color: Color(0xFFEBECEC)))),
                    width: 82,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2136),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xFFA3A5A7))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Center(
                        child: Text("Strategies",
                            style: TextStyle(
                                fontSize: 12.8, color: Color(0xFFEBECEC)))),
                    width: 80,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2136),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xFFA3A5A7))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Center(
                        child: Text("Stocks",
                            style: TextStyle(
                                fontSize: 12.8, color: Color(0xFFEBECEC)))),
                    width: 80,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2136),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xFFA3A5A7))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          color: Color(0xFF2A2136),
                          child: ListTile(
                            leading: Container(
                              width: 40,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            title: Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: 12.8, color: Color(0xFFEBECEC)),
                            ),
                            subtitle: Text(
                              description[index],
                              style: TextStyle(
                                  fontSize: 10.24, color: Color(0xB3EBECEC)),
                            ),
                            trailing: IconButton(
                                icon:
                                    Icon(Icons.bookmark, color: bookmarkColor),
                                onPressed: () {
                                  toggleBookmarkColor();
                                  setState(() {});
                                }),
                          ),
                        ),
                        Container(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
