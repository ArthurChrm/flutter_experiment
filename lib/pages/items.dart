import 'package:flutter/material.dart';

import '../widgets/items/items.dart';

class ItemsPages extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  ItemsPages(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Manage item'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter experiment"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Items(items),
    );
  }
}
