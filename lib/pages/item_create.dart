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
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
              contentText = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.multiline,
          onChanged: (String value) {
            setState(() {
              description = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              price = double.parse(value);
            });
          },
        ),
      ],
    );
  }
}
