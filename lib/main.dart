import 'package:flutter/material.dart';
import 'package:abidkhan/homepage.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbId KhAn',
      home: HomePage()
    );
  }
}

