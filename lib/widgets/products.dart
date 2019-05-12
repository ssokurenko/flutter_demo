import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: products
            .map((element) => Card(
                    child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/product.jpg'),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text(element),
                    )
                  ],
                )))
            .toList());
  }
}
