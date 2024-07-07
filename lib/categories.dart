// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String activeString = "";

  List<String> categories = ["All", "Ideas", "Strategies", "Stocks"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categories
            .map((category) => _buildCategoryButton(category))
            .toList(),
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: GestureDetector(
        onTap: () {
          setState(() {
            activeString = category;
          });
        },
        child: Container(
          width: 82,
          height: 33,
          decoration: BoxDecoration(
            color: Color(0xFF2A2136),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color:
                  activeString == category ? Colors.green : Color(0xFFA3A5A7),
            ),
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                fontSize: 12.8,
                color: Color(0xFFEBECEC),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
