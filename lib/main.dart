// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFF211A2A),
            primaryColor: Color(0xFF211A2A)));
  }
}
