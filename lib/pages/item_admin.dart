import 'package:flutter/material.dart';

import './item_create.dart';
import './item_list.dart';

class ItemAdminPage extends StatelessWidget {
  final Function addItem;
  final Function deleteItem;

  ItemAdminPage(this.addItem, this.deleteItem);

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
                icon: Icon(Icons.create),
                text: 'Create item',
              ),
              Tab(
                icon: Icon(Icons.list),
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
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ItemCreatePage(addItem),
            ItemListPage(),
          ],
        ),
      ),
    );
  }
}
