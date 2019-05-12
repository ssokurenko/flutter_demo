import 'package:flutter/material.dart';

import './widgets/product_manager.dart';

// Application entry point
main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.orange,
          accentColor: Colors.orangeAccent),
      home: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Text('Products'),
          )),
          body: ProductManager(startingProduct: 'Init product')),
      debugShowCheckedModeBanner: false,
    );
  }
}
