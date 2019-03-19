import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<String> items;

  // Constructor expects to receive a variable called "items", it will then initialize the class variable with that argument
  Items(this.items);
  // I could also write Items(items){this.items=items;}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/baguette.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
