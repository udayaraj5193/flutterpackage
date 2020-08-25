import 'package:custom_alert_box/login/login1.dart';
import 'package:custom_alert_box/login/login2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyHome> {
  final TextEditingController ctrl_unm = new TextEditingController();
  final TextEditingController ctrl_pwd = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: getWidget());
  }

  Widget getWidget() {
    int val = 2;
    if (val == 1) {
      return Login1(
          controller_username: ctrl_unm,
          controller_password: ctrl_pwd,
          onSubmitField: () {
            printData();
          });
    } else {
      return Login2(
          controller_username: ctrl_unm,
          controller_password: ctrl_pwd,
          onSubmitField: () {
            printData();
          });
    }
  }

  void printData() {
    print("Username:" +
        ctrl_unm.text.toString() +
        "\nPassword:" +
        ctrl_pwd.text.toString());
  }
}
