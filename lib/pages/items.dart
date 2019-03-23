import 'package:flutter/material.dart';

import '../items_manager.dart';

class ItemsPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter experiment"),
      ),
      body: ItemsManager(),
    );
  }
}
