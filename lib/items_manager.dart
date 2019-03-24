import 'package:flutter/material.dart';

import './item_control.dart';
import './items.dart';

class ItemsManager extends StatelessWidget {
  final List<Map<String, String>> items;
  final Function deleteItem;
  final Function addItem;

  ItemsManager(this.items, this.deleteItem, this.addItem);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ItemControl(addItem),
      ),
      Expanded(
        child: Items(items, deleteItem: deleteItem),
      ),
    ]);
  }
}
