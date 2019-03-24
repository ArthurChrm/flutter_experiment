import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/item_admin.dart';
import './pages/items.dart';
import './pages/item.dart';

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

class _AppState extends State<App> {
  List<Map<String, String>> _items = [];

  void _addItem(Map<String, String> item) {
    setState(() {
      _items.add(item);
    });
  }

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

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
          '/': (BuildContext context) =>
              ItemsPages(_items, _addItem, _deleteItem),
          '/admin': (BuildContext context) => ItemAdminPage(),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
          if (pathElements[1] == 'item') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) =>
                  ItemPage(_items[index]['title'], _items[index]['image']),
            );
          }
          return null;
        });
  }
}
