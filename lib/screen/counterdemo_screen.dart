import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
  static const routeName = '/counterDemoScreen';
  @override
  State<StatefulWidget> createState() {
    return _CounterDemoState();
  }
}

class _CounterDemoState extends State<CounterDemoScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
      ),
      body: Column(
        children: [
          Text(
            'Counter = $count',
            style: Theme.of(context).textTheme.headline5,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                ++count;
              });
            },
            child: Text(
              'Up',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                --count;
              });
            },
            child: Text(
              'Down',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
