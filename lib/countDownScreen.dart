import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xmas_countdown_flutter/countdownContent/digitClock.dart';
import 'package:xmas_countdown_flutter/constants.dart';

class CountDownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountDown(title: 'Flutter Demo Home Page'),
    );
  }
}

class CountDown extends StatefulWidget {
  CountDown({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//  Duration _duration = Duration(seconds: 1000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSpace(),
            Text(
              'Starts in ',
              style: kXmasStartText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            //access digitClock content at digitClock.dart
            DigitClock(scaffoldKey: _scaffoldKey),
            buildSpace(),
          ],
        ),
      ),
    );
  }
}
