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

  Widget _buildTitleTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Item title'),
      onChanged: (String value) {
        setState(() {
          _title = value;
        });
      },
    );
  }

  Widget _buildDescriptionTextField() {
    return TextField(
      maxLines: 4,
      decoration: InputDecoration(labelText: 'Description'),
      keyboardType: TextInputType.multiline,
      onChanged: (String value) {
        setState(() {
          _description = value;
        });
      },
    );
  }

  Widget _buildPriceTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Price'),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        setState(() {
          _price = double.parse(value);
        });
      },
    );
  }

  void _submitForm() {
    final Map<String, dynamic> item = {
      'title': _title,
      'description': _description,
      'price': _price,
      'image': 'assets/baguette.jpg'
    };
    widget.addItem(item);
    Navigator.pushReplacementNamed(context, '/items');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550 ? 500 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;

    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
        children: <Widget>[
          _buildTitleTextField(),
          _buildDescriptionTextField(),
          _buildPriceTextField(),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(5.0),
              child: Text("My button"),
            ),
            onTap: _submitForm,
          ),
        ],
      ),
    );
  }
}
