import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_layouts2/Post.dart';
import 'package:learn_flutter_layouts2/pages/HomePage.dart';
import 'package:learn_flutter_layouts2/pages/PostDetailsPage.dart';

class Application {
  static Router router;
}

var postDetailsHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  Post post = params["post"];
  return new PostDetailsPage(post: post);
});

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: Application.router.generator,
    );
  }
}
