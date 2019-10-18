import 'package:flutter/cupertino.dart';

class TitleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Image.asset(
      'images/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ));
  }
}
