import 'package:flutter/material.dart';
import 'package:lesson2/screen/counterdemo_screen.dart';
import 'package:lesson2/screen/listdemo_screen.dart';
import 'package:lesson2/screen/widgetlifecycle_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a menu'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, CounterDemoScreen.routeName),
            child: Text(
              'Counter Demo',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          RaisedButton(
            onPressed: () =>
                Navigator.pushNamed(context, WidgetLifeCycleScreen.routeName),
            child: Text(
              'Widget life Cycle Demo',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, ListDemoScreen.routeName),
            child: Text(
              'List Demo',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
