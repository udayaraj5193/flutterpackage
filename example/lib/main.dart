import 'package:flutter/material.dart';
import 'package:custom_alert_box/custom_alert_box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Login'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await CustomAlertBox.showCustomAlertBox(
              context: context,
              willDisplayWidget: Container(
                child: Text('Alert from package'),
              ));
        },
        tooltip: 'Alert Box',
        child: Icon(Icons.message),
      ),
    );
  }
}
