import 'package:flutter/material.dart';
import 'package:flutter_layout/ui/auth.dart';
import 'package:flutter_layout/ui/Splash.dart';
import 'package:flutter_layout/ui/MainPage.dart';
import 'package:flutter_layout/ui/products_admin.dart';

main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
  return new MaterialApp(
     // home: new Auth(),
routes: {
        //If we use '/' then 'home: new Auth()' will not work
        '/':(BuildContext context)=>MainPage(),
  '/product_admin':(BuildContext context)=>ProductAdmin(),
},
//      home: new Splash()
  );
  }
}


/*//Introduction to StatelessWidget
class MyApp extends StatelessWidget {
  //Build will be called only once while this is created
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Title"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              RaisedButton(
                child: Text("Add Item"),
                onPressed: () {},
                color: Colors.red,
              ),
              Card(
                margin: EdgeInsets.all(15.0),
                color: Colors.blue,
                child: Column(
                  children: [
                    Image.asset('assets/flutter.png'),
                    Text("Image Title")
                  ],
                ),
              ),
            ],
          )),
    );
  }
}*/
