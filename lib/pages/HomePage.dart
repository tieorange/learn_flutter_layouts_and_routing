import 'package:flutter/material.dart';
import 'package:learn_flutter_layouts2/Post.dart';
import 'package:learn_flutter_layouts2/main.dart';
import 'package:learn_flutter_layouts2/pages/PostDetailsPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pets")),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: buildList(),
      ),
    );
  }

  buildList() {
    var src = "http://coape.pl/files/image/petsitter_photo2017_2.jpg";
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: buildItem(src),
            onTap: () {
              onClickItem(index);
            },
          );
        }).build(context);
  }

  Container buildItem(String src) {
    return Container(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white54,
          elevation: 6,
          child: Column(
            children: <Widget>[
              buildItemImage(src),
              Text("domowy hotel dla psow warszawa lore ispus dla psow swiezy",
                  textAlign: TextAlign.center),
              Row(
                children: <Widget>[buildLocation(), buildTimeCreated()],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildItemImage(String src) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hero(tag: 'postPicture', child: Image.network(src)),
    );
  }

  Padding buildTimeCreated() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[Icon(Icons.timer), Text("Dziś o 08:37")],
      ),
    );
  }

  Padding buildLocation() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[Icon(Icons.location_on), Text("Warszawa Centrum")],
      ),
    );
  }

  onClickItem(int index) {
    Application.router.navigateTo(context, "post/someId");
/*
    final pictures =
        List.of(["http://coape.pl/files/image/petsitter_photo2017_2.jpg"]);
    final post = new Post("title", pictures);

    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => PostDetailsPage(
              post: post,
            )));*/
  }
}
