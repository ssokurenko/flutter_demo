import 'package:flutter/material.dart';

import './product_manager.dart';

// Application entry point
main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cats rock'),
          ),
          body: ProductManager()),
      debugShowCheckedModeBanner: false,
    );
  }
}
