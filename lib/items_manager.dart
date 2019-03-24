import 'package:flutter/material.dart';

import './items.dart';

class ItemsManager extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  ItemsManager(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Items(items),
      ),
    ]);
  }
}
