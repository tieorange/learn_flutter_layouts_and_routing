import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_layouts2/Post.dart';
import 'package:learn_flutter_layouts2/pages/HomePage.dart';
import 'package:learn_flutter_layouts2/pages/PostDetailsPage.dart';

class Routes {
  static String root = "/";
  static String postDetails = "/post/:postId";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);

    router.define(postDetails, handler: postDetailsHandler);
  }
}

var rootHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new MyHomePage();
});

final postDetailsHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  final List<String> postId = params["postId"];
  final pictures =
      List.of(["http://coape.pl/files/image/petsitter_photo2017_2.jpg"]);
  final post = new Post(postId.first, pictures);
  return new PostDetailsPage(post: post);
});
