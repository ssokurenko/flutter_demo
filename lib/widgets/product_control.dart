import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          this.addProduct({
            'title': 'MacBook Pro',
            'imageUrl': 'assets/images/product.jpg'
          });
        },
        child: Text('Add'));
  }
}
