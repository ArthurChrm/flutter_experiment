import 'package:flutter/material.dart';

import './pages/item.dart';
import './pages/item_admin.dart';
import './pages/items.dart';
import './pages/auth.dart';

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
  List<Map<String, dynamic>> _items = [];

  void _addItem(Map<String, dynamic> item) {
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
        accentColor: Colors.blue,
        buttonColor: Colors.deepPurple
      ),
      //home: AuthPage(),
      routes: {
        // The '/' key is used for the home property
        // We can't use this with the home argument because they do the exact same thing
        '/': (BuildContext context) => AuthPage(),
        '/items': (BuildContext context) => ItemsPages(_items),
        '/admin': (BuildContext context) =>
            ItemAdminPage(_addItem, _deleteItem),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'item') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ItemPage(
                _items[index]['title'],
                _items[index]['image'],
                _items[index]['price'],
                _items[index]['description']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ItemsPages(_items));
      },
    );
  }
}
