import 'package:flutter/material.dart';

import './price_tag.dart';
import '../ui_elements/adress_tag.dart';
import '../ui_elements/title_default.dart';

class ItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final int itemIindex;

  ItemCard(this.item, this.itemIindex);

  Widget _buildTitlePriceRow() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(item['title']),
          SizedBox(width: 8.0),
          PriceTag(
            item['price'].toString(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushNamed<bool>(
                context, '/item/' + itemIindex.toString());
          },
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(item['image']),
          _buildTitlePriceRow(),
          AdressTag("Paris, France"),
          _buildActionButtons(context),
        ],
      ),
    );
  }
}
