import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget ({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 728) {
        return largeScreen;
      } else if (constraints.minHeight < 728 && constraints.maxWidth > 440) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    },);
  }
}