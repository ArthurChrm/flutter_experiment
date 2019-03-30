import 'package:flutter/material.dart';

class ItemCreatePage extends StatefulWidget {
  final Function addItem;

  ItemCreatePage(this.addItem);

  @override
  State<StatefulWidget> createState() {
    return _ItemCreatePageState();
  }
}

class _ItemCreatePageState extends State<ItemCreatePage> {
  String title = '';
  String description = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Item title'),
            onChanged: (String value) {
              setState(() {
                title = value;
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
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> item = {
                'title': title,
                'description': description,
                'price': price,
                'image': 'assets/baguette.jpg'
              };
              widget.addItem(item);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
