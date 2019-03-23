import 'package:flutter/material.dart';

import '../items_manager.dart';

class ItemsPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage item'),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter experiment"),
      ),
      body: ItemsManager(),
    );
  }
}
