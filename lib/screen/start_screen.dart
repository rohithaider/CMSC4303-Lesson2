import 'package:flutter/material.dart';

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
            onPressed: null,
            child: Text('Menu 1'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('Menu 2'),
          )
        ],
      ),
    );
  }
}
