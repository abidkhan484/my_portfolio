import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class QuoteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 270,
              width: 240,
              child: TypewriterAnimatedTextKit(
                  text: ['"Remember, Red, \nhope is a good thing, \nmaybe the best of things, \nand no good thing ever dies."\n\t\t\t-Andy'],
                  speed: Duration(milliseconds: 100),
                  pause: Duration(seconds: 2),
                  textStyle: TextStyle(fontFamily: 'AgencyFB', fontSize: 30),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart,
              )
            ),
          ],
        ),
      )),
    );
  }
}
