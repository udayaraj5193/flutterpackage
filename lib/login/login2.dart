import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  final TextEditingController controller_username;
  final TextEditingController controller_password;
  final Function onSubmitField;

  const Login2(
      {this.controller_username, this.controller_password, this.onSubmitField});

  @override
  State<StatefulWidget> createState() {
    return login2(controller_username, controller_password, onSubmitField);
  }
}

class login2 extends State<Login2> {
  int count = 0;
  final TextEditingController controller_username;
  final TextEditingController controller_password;
  final Function onSubmitField;
  login2(
      this.controller_username, this.controller_password, this.onSubmitField);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TouchStoreApp"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            child: TextFormField(
              controller: controller_username,
              decoration: InputDecoration(labelText: 'Username'),
            ),
          ),
          Container(
            child: TextFormField(
              controller: controller_password,
              decoration: InputDecoration(labelText: 'Password'),
            ),
          ),
          FlatButton(
            onPressed: () {
              if (widget.onSubmitField != null) widget.onSubmitField();
            },
            child: Text("Login"),
            color: Colors.amber,
            textColor: Colors.white,
          ),
        ],
      ),
      persistentFooterButtons: <Widget>[],
    );
  }
}
