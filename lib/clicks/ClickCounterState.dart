import 'package:flutter/material.dart';

import 'ClickCounter.dart';

class ClickCounterState extends State<ClickCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _counter++;
          });
        },
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 100.0),
              child: Text('You have pushed this text this many times:'),
            ),
            Text('$_counter', style: Theme.of(context).textTheme.display1),
          ],
        ));
  }

//  void incrementCounter() {
//    // Changing state -> call of build method -> update UI
//    setState(() {
//      _counter++;
//    });
//  }
}
