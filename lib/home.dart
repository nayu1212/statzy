// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:statzy/categories.dart';
import 'package:statzy/mylist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchcontroller = TextEditingController();
  List<String> title = [
    "Trending outliers",
    "Booming Financial",
    "Value Picker",
    "Strong TMT",
    "Vehicle Cell",
    "Trending Outliers1",
    "Trending Outliers2",
    "abc",
    "pqr",
    "rob"
  ];
  List<String> description = [
    "Quantitative Strategy",
    "Thematic Strategy",
    "Fundamental Strategy",
    "Long term Idea",
    "Short term Idea",
    "Quantitative Strategy1",
    "Quantitative Strategy2",
    "abc",
    "pqr",
    "rob"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF211A2A),
        title: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 8),
          child: Center(
            child: Container(
              width: 295,
              height: 51,
              decoration: BoxDecoration(
                  color: Color(0xFF2A2136),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                controller: searchcontroller,
                style: TextStyle(fontSize: 13, color: Color(0xFFEBECEC)),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search by stock Name, Patterns...",
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.green,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                searchcontroller.clear();
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Categories(),
              SizedBox(height: 20),
              Mylist(
                title: title,
                description: description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
