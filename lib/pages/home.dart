import 'package:flutter/material.dart';
import '../widgets/product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('App'),
      )),
      body: ProductManager(),
    );
  }
}
