import 'package:flutter/material.dart';

import 'item_card.dart';

class Items extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  // Constructor expects to receive a variable called "items", it will then initialize the class variable with that argument
  Items(this.items);
  // I could also write Items(items){this.items=items;}

  @override
  Widget build(BuildContext context) {
    return items.length > 0
        ? ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                ItemCard(items[index], index),
            itemCount: items.length,
          )
        : Center(
            child: Text('No items found.'),
          );
  }
}
