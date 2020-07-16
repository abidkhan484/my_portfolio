import 'package:flutter/material.dart';
import 'package:abidkhan/about_tab.dart';
import 'package:abidkhan/quote_tab.dart';
import 'package:abidkhan/responsive_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: SingleChildScrollView(
                    child: ResponsiveWidget(
      largeScreen: buildContent(largeScreen: true),
      mediumScreen: buildContent(mediumScreen: true),
      smallScreen: buildContent(mediumScreen: true),
    )))));
  }

  Widget buildContent({largeScreen: false, mediumScreen: false}) {
    if (largeScreen) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[AboutTab(), QuoteTab()],
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[AboutTab(), QuoteTab()],
    );
  }
}
