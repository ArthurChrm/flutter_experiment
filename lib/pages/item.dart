import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item detail"),
      ),
      body: Center(
        child: Text('On the item page'),
      ),
    );
  }
}
