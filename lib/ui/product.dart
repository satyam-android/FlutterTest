import 'package:flutter/material.dart';

import './product_detail.dart';

class Product extends StatelessWidget {
  final List _product;
  final Function _deleteProduct;

  Product(this._product,this._deleteProduct);

  Widget buildProductItem(BuildContext context, int index) {
    return Card(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Image.asset('assets/flutter.png'),
          Text(_product[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Check Detail"),
                onPressed: () {
                  Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                  _product[index], 'assets/flutter.png')))
                      .then(( bool onValue){
                        if(onValue){
                          _deleteProduct(index);
                        }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildProductList() {
    if (_product.length > 0) {
      return ListView.builder(
          itemBuilder: buildProductItem, itemCount: _product.length);
    } else {
      return Center(child: Text("No Product Found"));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Custom Adapter Listview
    return buildProductList();
    //  return _product.length >0 ? ListView.builder(itemBuilder: buildProductItem, itemCount:_product.length) :Center(child: Text("NoProduct Found"),);
    //This will return a simple list
    /*return ListView(
      children: _product
          .map((name) => Card(
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/flutter.png'),
                    Text(name)
                  ],
                ),
              ))
          .toList(),
    );*/
  }
}
