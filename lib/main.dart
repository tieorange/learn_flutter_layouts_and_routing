import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_layouts2/Routes.dart';
import 'package:learn_flutter_layouts2/pages/HomePage.dart';

//region Application
class Application {
  static Router router;
}
//endregion

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    Application.router = new Router();
    Routes.configureRoutes(Application.router);
  }

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
