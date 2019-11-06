import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HorizontalSlidingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Duration initialDelay = Duration(seconds: 1);

    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "User :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
              DelayedDisplay(
                slidingBeginOffset: Offset(0.35, 0),
                delay: initialDelay,
                child: Text(
                  "John",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              DelayedDisplay(
                slidingBeginOffset: Offset(0.35, 0),
                delay: Duration(seconds: initialDelay.inSeconds + 1),
                child: Text(
                  "Doe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedDisplay(
                slidingBeginOffset: Offset(0.35, 0),
                delay: Duration(seconds: initialDelay.inSeconds + 2),
                child: Text(
                  "Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
