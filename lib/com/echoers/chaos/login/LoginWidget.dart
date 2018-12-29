import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Form(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            children: <Widget>[
              SizedBox(
                height: kToolbarHeight,
              ),
              buildTitle()
            ],
          )
      )
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Padding buildTitle() {
    return Padding(
        padding: EdgeInsets.all(30.00),
        child: Text(
          '欢迎来到车小多',
          style: TextStyle(fontSize: 24.0),
        ),
    );
  }
}
