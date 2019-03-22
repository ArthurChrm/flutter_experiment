import 'package:flutter/material.dart';

import './items.dart';

class ItemsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemsManagerState();
  }
}

class _ItemsManagerState extends State<ItemsManager> {
  List<String> _items = ['Item 1'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text("Add item"),
            onPressed: () {
              setState(() {
                _items.add('Other item');
              });
            },
          ),
        ),
        Items(_items)
      ],
    );
  }
}
