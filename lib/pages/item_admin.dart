import 'package:flutter/material.dart';

import './items.dart';

class ItemAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Manage items'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Create item',
                ),
                Tab(
                  text: 'My items',
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All items'),
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
        ));
  }
}
