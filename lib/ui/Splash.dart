import 'package:flutter/material.dart';

import './MainPage.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/flutter.png'),
              Text("Welcome To Flutter"),
              RaisedButton(
                  color: Colors.red,
                  child: Text("Main Page"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }),
            ],
          ),
        ));
  }
}
