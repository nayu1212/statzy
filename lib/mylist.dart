// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mylist extends StatefulWidget {
  final List<String> title;
  final List<String> description;
  const Mylist({super.key, required this.title, required this.description});

  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  String activeTitle = "";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.title.length,
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    title: Text(
                      widget.title[index],
                      style:
                          TextStyle(fontSize: 12.8, color: Color(0xFFEBECEC)),
                    ),
                    subtitle: Text(
                      widget.description[index],
                      style:
                          TextStyle(fontSize: 10.24, color: Color(0xB3EBECEC)),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.bookmark,
                            color: widget.title[index] == activeTitle
                                ? Colors.green
                                : Colors.grey),
                        onPressed: () {
                          setState(() {
                            activeTitle = widget.title[index];
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            );
          }),
    );
  }
}
