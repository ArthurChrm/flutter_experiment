import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<String> items;

  // Constructor expects to receive a variable called "items", it will then initialize the class variable with that argument
  Items(this.items);
  // I could also write Items(items){this.items=items;}

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/baguette.jpg'),
          Text(items[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: items.length,
    );
  }
}
