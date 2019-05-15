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
    if (products.length == 0) {
      return Center(
        child: Container(
          child: Text('No products, please tap the Add button'),
        ),
      );
    }
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
