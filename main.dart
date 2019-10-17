import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Hello',
        theme: ThemeData(
          backgroundColor: Colors.pink,
        ),
        home: new Container(
          padding: EdgeInsets.all(1.5),
          alignment: Alignment.center,
          child: new Text(
            "How do you do today, flutter is serious",
            textDirection: TextDirection.ltr,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _places = <String>[];

  @override
  void initState() {
    super.initState();
    _places = new List.generate(200, (i) => "Resturant: $i");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: new ListView(
        children: _places.map((places) => new Text(places)).toList(),
      )),
    );
  }
}
