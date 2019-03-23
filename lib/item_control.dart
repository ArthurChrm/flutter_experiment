import 'package:flutter/material.dart';

class ItemControl extends StatelessWidget {
  final Function addItem;

  ItemControl(this.addItem);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Add item"),
      onPressed: () {
        addItem('Item');
      },
    );
  }
}
