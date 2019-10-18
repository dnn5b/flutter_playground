import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_flutter/title/TitleImageDesc.dart';

import 'TitleButtons.dart';
import 'TitleImage.dart';

class TitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return (Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TitleImage(),
              TitleImageDesc(),
              TitleButtons()
            ],
          ),
        ),
      ],
    ));
  }

}
