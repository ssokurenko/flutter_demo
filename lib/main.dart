import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './widgets/product_manager.dart';

// Application entry point
main() {
  // Debug painting
  // debugPaintSizeEnabled = true;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent),
      home: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Text('Timon Merch Store'),
          )),
          body: ProductManager(),
          bottomNavigationBar: BottomAppBar(
      child: Container(height: 50.0,),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => {},
      tooltip: 'Add',
      child: Icon(Icons.add),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,),
        
      debugShowCheckedModeBanner: false,
    );
  }
}
