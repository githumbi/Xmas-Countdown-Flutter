import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';
import 'countDownScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFCF0E5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/xmascat.gif',
            height: 200,
          ),
          Text(
            'Xmas CountDown',
            style: kXmasTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Colors.red[300],
            highlightColor: Colors.green,
            child: Text(
              'countdown Route',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CountDownScreen()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'by: Joseph Githumbi 😜',
          ),
        ],
      ),
    );
  }
}
