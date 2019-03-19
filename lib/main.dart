import 'package:flutter/material.dart';

main(List<String> args) {
  // runApp wants a Widget so we give the one created by the instanciation of the "App" class
  runApp(App());
}

// Main UI
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

// The underscore keep this class from being used in other files
class _AppState extends State<App> {
  // <App> Means that _AppState belongs to "App"

  List<String> _items = ['Item 1', 'Item 2'];

  @override
  Widget build(BuildContext context) {
    // "home:" means MaterialApp expect an argument named "home"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter experiment"),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Add item"),
              onPressed: () {},
            ),
          ),
          Column(
            children: _items
                .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/baguette.jpg'),
                          Text(element)
                        ],
                      ),
                    ))
                .toList(),
          ),
        ]),
      ),
    );
  }
}
