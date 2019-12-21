import 'package:flutter/material.dart';

class CountDownScreen extends StatefulWidget {
  @override
  _CountDownScreenState createState() => _CountDownScreenState();
}

class _CountDownScreenState extends State<CountDownScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Text('Contdown page'),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('go back'),
            )
          ],
        ),
      ),
    );
  }
}
