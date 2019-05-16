import 'package:flutter/material.dart';
import './product_manager.dart';

class ProductScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('App'),
      )),
      body: ProductManager(),
    );
  }
}
