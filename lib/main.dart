import 'package:flutter/material.dart';

// Application entry point
main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Rocks'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}