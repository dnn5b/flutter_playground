import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/title/TitleWidget.dart';

import 'clicks/ClickCounter.dart';
import 'list/ListRoute.dart';

class HomeRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground - home"),
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
        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ListRoute())); },
        tooltip: 'Increment',
        child: Icon(Icons.list),
      ),
    );
  }

}
