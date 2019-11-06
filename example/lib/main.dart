import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DelayedDisplay(
                child: Text(
                  "OOOK",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DelayedDisplay(
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                delay: Duration(seconds: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
