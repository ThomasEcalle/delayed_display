import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class VerticalSlidingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Duration initialDelay = Duration(seconds: 1);

    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DelayedDisplay(
                delay: initialDelay,
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 1),
                child: Text(
                  "World",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 2),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 3),
                child: Text(
                  "I already have an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
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
