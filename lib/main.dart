import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/item_admin.dart';
import './pages/items.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      //home: AuthPage(),
      routes: {
        // The '/' key is used for the home property
        // We can't use this with the home argument because they do the exact same thing
        '/': (BuildContext context) => ItemsPages(),
        '/admin': (BuildContext context) => ItemAdminPage(),
      },
    );
  }
}
