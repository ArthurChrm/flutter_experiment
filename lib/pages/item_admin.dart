import 'package:flutter/material.dart';

import './items.dart';

class ItemAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Admin'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Items presentation'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ItemsPages();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('You are on the item admin page'),
      ),
    );
  }
}
