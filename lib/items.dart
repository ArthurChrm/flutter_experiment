import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<Map<String, String>> items;
  final Function deleteItem;

  // Constructor expects to receive a variable called "items", it will then initialize the class variable with that argument
  Items(this.items, {this.deleteItem});
  // I could also write Items(items){this.items=items;}

  @override
  Widget build(BuildContext context) {
    return items.length > 0
        ? ListView.builder(
            itemBuilder: _buildItem,
            itemCount: items.length,
          )
        : Center(
            child: Text('No items found.'),
          );
  }

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(items[index]['image']),
          Text(items[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  Navigator.pushNamed<bool>(
                          context, '/item/' + index.toString())
                      .then((bool value) {
                    if (value) deleteItem(index);
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
