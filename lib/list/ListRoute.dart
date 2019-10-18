import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListRoute extends StatelessWidget {
  final List<String> entries = <String>[
    'A',
    'B',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[100, 500, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground - list"),
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[new Random().nextInt(3)]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
