import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/posts/Post.dart';
import 'package:hello_flutter/posts/PostList.dart';
import 'package:hello_flutter/posts/PostManager.dart';

class PostListState extends State<PostList> {
  Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
//            return Text(snapshot.data[50].title);}
            return ListView.separated(
                padding: const EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Center(child: Text('${snapshot.data[index].title}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: snapshot.data.length);
          }
          // By default, show a loading spinner.
          return CircularProgressIndicator();
        });
  }
}
