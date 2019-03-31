import 'package:flutter/material.dart';

import '../widgets/ui_elements/title_default.dart';

class ItemPage extends StatelessWidget {
  final String title;
  final String imageURL;
  final double price;
  final String description;

  ItemPage(this.title, this.imageURL, this.price, this.description);

  Widget _buildAdressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Paris, France",
          style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
        ),
        Container(
          child: Text(
            "|",
            style: TextStyle(color: Colors.grey),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5.0),
        ),
        Text(price.toString() + "€",
            style: TextStyle(fontFamily: 'Oswald', color: Colors.grey))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(imageURL),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TitleDefault(title),
                  ),
                  _buildAdressPriceRow(),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )));
  }
}
