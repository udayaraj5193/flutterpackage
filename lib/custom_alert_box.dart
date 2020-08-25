library custom_alert_box;

import 'package:custom_alert_box/homepage.dart';
import 'package:flutter/material.dart';

class CustomAlertBox {
  static Future showCustomAlertBox({
    @required BuildContext context,
    @required Widget willDisplayWidget,
  }) {
    assert(context != null, "");
    assert(willDisplayWidget != null, "");

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Welcome"),
    //   ),
    //   body: Center(
    //     child: Text('welcome to home page'),
    //   ),
    // );

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                MaterialButton(
                  color: Colors.white30,
                  child: Text('Go to Homepage'),
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHome()),
                    );
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
