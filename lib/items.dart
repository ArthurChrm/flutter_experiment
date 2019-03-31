import 'package:flutter/material.dart';

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
          SizedBox(height: 10.0),
          Row(
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
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.0,
                  vertical: 2.5,
                ),
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  items[index]['price'].toString()+"€",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  Navigator.pushNamed<bool>(
                      context, '/item/' + index.toString());
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
