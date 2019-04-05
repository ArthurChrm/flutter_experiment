import 'package:flutter/material.dart';

class ItemListPage extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  ItemListPage(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Image.asset(items[index]["image"]),
          title: Text(items[index]["title"]),
          trailing: IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
