import 'package:flutter/material.dart';

import 'HomeRoute.dart';

void main() => runApp(App());

// Root of application
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "test",
        theme: ThemeData(primarySwatch: Colors.teal),
        home: HomeRoute()
    );
  }
}
