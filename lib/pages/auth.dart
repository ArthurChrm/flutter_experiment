import 'package:flutter/material.dart';

import './items.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Authentification'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text("Log in"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ItemsPages();
                }));
              }),
        ));
  }
}
