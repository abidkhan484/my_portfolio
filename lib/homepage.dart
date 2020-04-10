import 'package:flutter/material.dart';
import 'package:abidkhan/about_tab.dart';
import 'package:abidkhan/quote_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // color: Colors.blue,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[AboutTab(), QuoteTab()],
            ))));
  }
}
