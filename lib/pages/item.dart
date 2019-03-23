import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String title;
  final String imageURL;
  ItemPage(this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text(title),
              ),
              RaisedButton(
                child: Text("Back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
