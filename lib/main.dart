import 'package:flutter/material.dart';

import './pages/auth.dart';

// Application entry point
main() {
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
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
