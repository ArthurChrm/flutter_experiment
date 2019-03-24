import 'package:flutter/material.dart';

import '../items_manager.dart';
import '../pages/item_admin.dart';

class ItemsPages extends StatelessWidget {
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
              title: Text('Manage item'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ItemAdminPage();
                }));
              },
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
