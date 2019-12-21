import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() => runApp(XmasCountdown());

class XmasCountdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xmas Countdown',
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
