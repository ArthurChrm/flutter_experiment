import 'package:flutter/material.dart';

import './items_manager.dart';

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
        body: ItemsManager(),
      ),
    );
  }
}
