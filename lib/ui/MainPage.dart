import 'package:flutter/material.dart';

import './product_manager.dart';
import 'products_admin.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                // This is used to automatically disable the icon
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                title: Text("Manage Product"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/product_admin');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("MainPage"),
          centerTitle: true,
        ),
//        body: ProductManager("Flutter is Awesome")
        body: ProductManager(""));
  }
}
