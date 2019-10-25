import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/posts/PostList.dart';

class ListRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground - list"),
      ),
      body: Center(
          child: PostList()
      ),
    );
  }
}
