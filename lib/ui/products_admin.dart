import 'package:flutter/material.dart';

import 'product_create.dart';
import 'product_list.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length:2,child:Scaffold(
      appBar: AppBar(
        title: Text("Product Admin"),
        bottom: TabBar(tabs: <Widget>[Tab(
          text: "Create Product",
          icon: Icon(Icons.create),
        ), Tab(
          text: "My Products",
          icon: Icon(Icons.list),
        )]),
      ),
      body: TabBarView(children: <Widget>[
        ProductCreate(),
        ProductList()
      ]),
    ),);
  }
}
