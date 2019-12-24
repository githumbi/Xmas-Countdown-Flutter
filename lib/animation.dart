import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xmas_countdown_flutter/constants.dart';

void main() => runApp(AnimationScreen());

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          color: Color(0xffBB2528),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/tree.gif',
                alignment: Alignment.center,
              ),
              Text(
                'and Happy New Year',
                style: kXmasNewYear,
                textAlign: TextAlign.center,
              )
            ],
          )),
    ));
  }
}
