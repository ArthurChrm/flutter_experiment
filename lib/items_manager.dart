import 'package:flutter/material.dart';

import './items.dart';
import './item_control.dart';

class ItemsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemsManagerState();
  }
}

class _ItemsManagerState extends State<ItemsManager> {
  // _items could be final because we never assign a new List to _items, we only add items to the existing List.
  // Const (before the []) on the other hand would be problematic
  List<String> _items = ['Item 1'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ItemControl(_addItem),
        ),
        Items(_items)
      ],
    );
  }

  void _addItem(String item) {
    setState(() {
      _items.add(item);
    });
  }
}
