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
  String _title = '';
  String _description = '';
  double _price = 0.0;

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
                _title = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Description'),
            keyboardType: TextInputType.multiline,
            onChanged: (String value) {
              setState(() {
                _description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _price = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> item = {
                'title': _title,
                'description': _description,
                'price': _price,
                'image': 'assets/baguette.jpg'
              };
              widget.addItem(item);
              Navigator.pushReplacementNamed(context, '/items');
            },
          ),
        ],
      ),
    );
  }
}
