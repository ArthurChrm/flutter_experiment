import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'terms': false
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      image: AssetImage('assets/background.jpg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty) return 'Email is empty';
      },
      decoration: InputDecoration(
          labelText: "Email", filled: true, fillColor: Colors.white),
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      validator: (String value) {
        if (value.length < 5) return 'Password too short (min 6)';
      },
      decoration: InputDecoration(
          labelText: "Password", filled: true, fillColor: Colors.white),
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  Widget _buildAcceptTermsSwitchTile() {
    return SwitchListTile(
      value: _formData['terms'],
      onChanged: (bool value) {
        setState(() {
          _formData['terms'] = value;
        });
      },
      title: Text('Accept terms'),
    );
  }

  void _submitForm() {
    if (!_formKey.currentState.validate() || !_formData['terms']) return;
    _formKey.currentState.save();
    print(_formData);
    Navigator.pushReplacementNamed(context, '/items');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;

    return Scaffold(
      appBar: AppBar(
        title: Text('Authentification'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: _buildBackgroundImage(),
          ),
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                width: targetWidth,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildPasswordField(),
                      _buildAcceptTermsSwitchTile(),
                      SizedBox(height: 10.0),
                      RaisedButton(
                        child: Text("Log in"),
                        onPressed: _submitForm,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
