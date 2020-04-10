import 'package:abidkhan/config/assets.dart';
import 'package:abidkhan/config/constants.dart';
import 'package:flutter/material.dart';

import 'dart:html' as html;

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Abid Khan',
                textScaleFactor: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Programmer, Curious Learner, Explorer',
                textScaleFactor: 1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_LINKEDIN, 'abidkhan'),
                      icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(Assets.linkedin),
                      ),
                      label: Text('Linkedin')),
                  FlatButton.icon(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_GITHUB, 'abidkhan'),
                      icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(Assets.github),
                      ),
                      label: Text('Github')),
                  FlatButton.icon(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_FACEBOOK, 'abidkhan'),
                      icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(Assets.facebook),
                      ),
                      label: Text('Facebook')),
                  FlatButton.icon(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_TWITTER, 'abidkhan'),
                      icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(Assets.twitter),
                      ),
                      label: Text("Twitter"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
