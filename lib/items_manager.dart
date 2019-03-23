import 'package:flutter/material.dart';

import './item_control.dart';
import './items.dart';

class ItemsManager extends StatefulWidget {
  final Map<String, String> startingItem;
  ItemsManager({this.startingItem});

  @override
  State<StatefulWidget> createState() {
    return _ItemsManagerState();
  }
}

class _ItemsManagerState extends State<ItemsManager> {
  // _items could be final because we never assign a new List to _items, we only add items to the existing List.
  // Const (before the []) on the other hand would be problematic
  List<Map<String, String>> _items = [];

  @override
  void initState() {
    if (widget.startingItem != null) {
      _items.add(widget.startingItem);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ItemControl(_addItem),
      ),
      Expanded(
        child: Items(_items),
      ),
    ]);
  }

  void _addItem(Map<String, String> item) {
    setState(() {
      _items.add(item);
    });
  }
}
