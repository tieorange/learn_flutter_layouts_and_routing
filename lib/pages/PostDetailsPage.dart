import 'package:flutter/material.dart';
import 'package:learn_flutter_layouts2/Post.dart';
import 'package:learn_flutter_layouts2/main.dart';

class PostDetailsPage extends StatefulWidget {
  final Post post;

  PostDetailsPage({Key key, @required this.post}) : super(key: key);

  @override
  _PostDetailsPageState createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.post.title}'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Image.network(getPicture()),
            FloatingActionButton.extended(
                label: Text('back'), onPressed: onBackPressed)
          ],
        ),
      ),
    );
  }

  void onBackPressed() {
    Application.router.pop(context);
  }

  String getPicture() => widget.post.pictures.first;
}
