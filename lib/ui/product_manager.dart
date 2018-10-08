import 'package:flutter/material.dart';

import './product.dart';

class ProductManager extends StatefulWidget {
  String productName;

  ProductManager(this.productName);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List _products = [];

  // To set default value with the use of spetial key "widget"
  @override
  void initState() {
    // TODO: implement initState
    if(widget.productName.length>0)
    _products.add(widget.productName);
    super.initState();
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            color: Colors.red,
            child: Text("Add Product"),
            onPressed: () {
              //It tell Flutter that there is change in Data so that the wedgits can change accordingly
              setState(() {
                _products.add("Flutter List Index "+_products.length.toString());
              });
            },
          ),
        ),
        Expanded(
          child: Product(_products,_deleteProduct),
        )
      ],
    );
  }
}
