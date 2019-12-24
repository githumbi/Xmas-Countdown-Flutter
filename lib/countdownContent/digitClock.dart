import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';
import 'package:xmas_countdown_flutter/constants.dart';
import 'package:xmas_countdown_flutter/animation.dart';

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
      duration: Duration(seconds: 10),
      slideDirection: SlideDirection.Down,
      separator: "-",
      textStyle: kXmasCountDown,
      onDone: () {
//        _scaffoldKey.currentState.showSnackBar(SnackBar(
//          content: Text('Clock 1 finished'),
//          backgroundColor: Colors.green,
//        ));

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AnimationScreen()));
      },
    );
  }
}

Widget buildSpace() {
  return SizedBox(height: 150);
}
