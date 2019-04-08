import 'package:flutter/material.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Post {}

class _MyHomePageState extends State<MyHomePage> {
  buildList(BuildContext context) {
    var src = "http://coape.pl/files/image/petsitter_photo2017_2.jpg";

    return Container(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white54,
          elevation: 6,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Image.network(src)),
              ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pets")),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: buildList(context),
      ),
    );
  }
}
