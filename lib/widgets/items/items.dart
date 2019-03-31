import 'package:flutter/material.dart';

import './price_tag.dart';

class Items extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  // Constructor expects to receive a variable called "items", it will then initialize the class variable with that argument
  Items(this.items);
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
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  items[index]['title'],
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Oswald"),
                ),
                SizedBox(width: 8.0),
                PriceTag(
                  items[index]['price'].toString(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
            child: Text("Paris, France"),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pushNamed<bool>(
                      context, '/item/' + index.toString());
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
