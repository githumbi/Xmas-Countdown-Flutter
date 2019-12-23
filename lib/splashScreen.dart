import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';
import 'countDownScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SvgPicture.asset(
              'images/bell.svg',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Xmas CountDown',
              style: kXmasTextStyle,
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('countdown Route'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CountDownScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
