import 'package:flutter/material.dart';

import 'vertical_sliding_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerticalSlidingExample(),
    );
  }
}
