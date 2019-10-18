import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FavoriteWidget.dart';

class TitleImageDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: (Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FavoriteWidget(),
              ],
            ))),
        Container(
            width: 390,
            child: Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500])))
      ],
    ));
  }
}
