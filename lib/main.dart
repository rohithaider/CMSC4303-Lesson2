import 'package:flutter/material.dart';
import 'package:lesson2/screen/counterdemo_screen.dart';
import 'package:lesson2/screen/start_screen.dart';

void main() {
  runApp(Lesson2App());
}

class Lesson2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        CounterDemoScreen.routeName: (context) => CounterDemoScreen(),
      },
    );
  }
}
