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
    return Scaffold(body: Text("hello"));
  }

  List<Widget> buildHeader(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        expandedHeight: 200,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("Title very long title about dogs in Warsaw. Cute dogs"),
//          background: buildImage(),
        ),
      )
    ];
  }

  buildBody() {
    return Row(
      children: <Widget>[Text("Some information")],
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton.extended(
        label: Text('back'), onPressed: onBackPressed);
  }

  void onBackPressed() {
    Application.router.pop(context);
  }

  String getPicture() => widget.post.pictures.first;
}
