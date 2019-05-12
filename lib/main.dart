import 'package:flutter/material.dart';

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
        body: Card(
            child: Column(
          children: <Widget>[Image.asset('assets/images/cat.jpg'), Text('Cat')],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
