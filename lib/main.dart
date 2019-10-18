import 'package:flutter/material.dart';
import 'package:hello_flutter/clicks/ClickCounter.dart';
import 'package:hello_flutter/title/TitleWidget.dart';

import 'clicks/ClickCounter.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // Root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "test",
        theme: ThemeData(primarySwatch: Colors.teal),
        home: Scaffold(
          appBar: AppBar(
            title: Text("flutter Playground"),
          ),
          body: Center(
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              children: <Widget>[
                TitleWidget(),
                ClickCounter(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
//            onPressed: ,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ));
  }
}
