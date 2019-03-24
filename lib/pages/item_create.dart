import 'package:flutter/material.dart';

class ItemCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemCreatePageState();
  }
}

class _ItemCreatePageState extends State<ItemCreatePage> {
  String contentText = '';
  String description = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Item title'),
            onChanged: (String value) {
              setState(() {
                contentText = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Description'),
            keyboardType: TextInputType.multiline,
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                price = double.parse(value);
              });
            },
          ),
        ],
      ),
    );
  }
}
