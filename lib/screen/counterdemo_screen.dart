import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
  static const routeName = '/counterDemoScreen';
  @override
  State<StatefulWidget> createState() {
    return _CounterDemoState();
  }
}

class _CounterDemoState extends State<CounterDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
      ),
      body: Text('Counter Demo'),
    );
  }
}
