import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Post.dart';

Future<List<Post>> fetchPosts() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    var list = json.decode(response.body) as List;
    return list.map((item) => Post.fromJson(item)).toList();
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}
