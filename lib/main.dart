import 'package:flutter/material.dart';

void main() => runApp(LoginWidget());

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String _userName, _password;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Form(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            children: <Widget>[
              SizedBox(height: kToolbarHeight),
              buildTitle(),
              buildUserNameTitle(),
              buildUserNameTextField(),
              buildPasswordTitle(),
              buildPasswordTextField(),
              buildLoginButton()
            ],
          )
      )
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Padding buildTitle() {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, kToolbarHeight, 0, 30.0),
        child: Text(
          '欢迎来到车小多',
          style: TextStyle(fontSize: 24.0),
        ),
    );
  }

  Container buildUserNameTitle() {
    return Container(
      child: Text(
        '用户名',
        style: TextStyle(fontSize: 13.0),
      ),
    );
  }

  TextFormField buildUserNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '请输入用户名',
      ),
      onSaved: (String value) => _userName = value,
    );
  }

  Padding buildPasswordTitle() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      child: Text(
        '密码',
        style: TextStyle(fontSize: 13.0),
      ),
    );
  }

  TextFormField buildPasswordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: '请输入密码'
      ),
      onSaved: (String value) => _password = value,
    );
  }

  Padding buildLoginButton() {
    return Padding(
      padding: EdgeInsets.only(top: 48.0),
      child: RaisedButton(
        child: Text(
          '登陆',
        ),
        textColor: Colors.white,
        color: Color(0xFFBD081C),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        onPressed: (){
          
        },
      ),
    );
  }
}