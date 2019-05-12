import 'package:flutter/material.dart';

// Application entry point
main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cats rock'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: RaisedButton(
                  child: Text('Add'),
                  onPressed: () {},
                ),
              ),
              Card(
                  child: Column(
                children: <Widget>[
                  Image.asset('assets/images/cat.jpg'),
                  Text('Cat')
                ],
              )),
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
