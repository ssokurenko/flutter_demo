import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  Widget _buildProductItem(context, index) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset('assets/images/product.jpg'),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text(products[index]),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
