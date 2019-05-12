import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Max'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(20.0),
        child: RaisedButton(
          child: Text('Add'),
          onPressed: () {
            setState(() {
              _products.add('Steve');
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
