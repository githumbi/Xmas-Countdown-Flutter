import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class DigitClock extends StatelessWidget {
  const DigitClock({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SlideCountdownClock(
//              duration: Duration(days: 1, minutes: 1000000),
      duration: Duration(days: 1),
      slideDirection: SlideDirection.Down,
      separator: ":",
      textStyle: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
      onDone: () {
        _scaffoldKey.currentState
            .showSnackBar(SnackBar(content: Text('Clock 1 finished')));
      },
    );
  }
}

Widget buildSpace() {
  return SizedBox(height: 50);
}
