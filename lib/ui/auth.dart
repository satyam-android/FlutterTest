import 'package:flutter/material.dart';

import './MainPage.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Login"),
            onPressed: () {
              //pushReplacement, this page will not be any more in stack, equal to"finish"
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            }),
      ),
    );
  }
}
