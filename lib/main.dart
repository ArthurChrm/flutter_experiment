import 'package:flutter/material.dart';

main(List<String> args) {
  // runApp wants a Widget so we give the one created by the instanciation of the "App" class
  runApp(App());
}

// Main UI
class App extends StatelessWidget {
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
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/baguette.jpg'),
                Text('This is a text')
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
