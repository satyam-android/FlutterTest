import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetail extends StatelessWidget {
  final String name;
  final String imageUrl;

  ProductDetail(this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // WillPopScope is added when we want to register call backwhen hardware backis pressed
    return WillPopScope(onWillPop: (){
      print("Hardware Back Pressed");
      //Manual Pop
      Navigator.pop(context,false);
      //Default Pop, if set true pop willbe performed
      return Future.value(false);

      //If both Manual and default is defined the Manual will be prefered,but Future value should be false else 2 pop will be executed.
      //Lecture 72 Adding Reaction Upon Button Press
    },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Detail"),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            Text(name),
            RaisedButton(
              child: Text("Back Check"),
              onPressed: () {
                //This will Pop the page on button Press
                //Navigator.pop(context);

                //To pass data while poping the page, but this willnot work when hardware back is pressed
                Navigator.pop(context, true);
              },
            )
          ],
        ),
      ),
    );
  }
}
